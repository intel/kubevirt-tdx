/*
 * This file is part of the KubeVirt project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Copyright 2021 Red Hat, Inc.
 *
 */

package util

import (
	corev1 "k8s.io/api/core/v1"
	resourcehelper "k8s.io/kubectl/pkg/util/resource"
)

const (
	DeprecatedLabelNamespace              string = "feature.node.kubernetes.io"
	DeprecatedLabellerNamespaceAnnotation        = "node-labeller-feature.node.kubernetes.io"
	DeprecatedcpuFeaturePrefix                   = "/cpu-feature-"
	DeprecatedcpuModelPrefix                     = "/cpu-model-"
	DeprecatedHyperPrefix                        = "/kvm-info-cap-hyperv-"
	DefaultMinCPUModel                           = "Penryn"
	RequirePolicy                                = "require"
	KVMPath                                      = "/dev/kvm"
	VmxFeature                                   = "vmx"
)

var DefaultObsoleteCPUModels = map[string]bool{
	"486":        true,
	"pentium":    true,
	"pentium2":   true,
	"pentium3":   true,
	"pentiumpro": true,
	"coreduo":    true,
	"n270":       true,
	"core2duo":   true,
	"Conroe":     true,
	"athlon":     true,
	"phenom":     true,
	"qemu64":     true,
	"qemu32":     true,
	"kvm64":      true,
	"kvm32":      true,
}

// getTDXKeyTotalRequestsAndLimits gets current consumed intel TDX keys by kubevirt
func getTDXKeyTotalRequestsAndLimits(podList *corev1.PodList) int {
	usedTDXKey := 0
	for _, pod := range podList.Items {
		podReqs, _ := resourcehelper.PodRequestsAndLimits(&pod)
		for podReqName := range podReqs {
			if podReqName == "intel.kubevirt.io/tdx" {
				usedTDXKey += 1
			}
		}
	}
	return usedTDXKey
}

// CalculateCurrentTDXKeyCap calculates current capacity of intel TDX key in kubevirt
// Currently, there are three ways to consume keys: 1. kubevirt; 2. coco; 3. lacunch vm on bare metal
// For managing how many keys that can be used in kubevirt, therefore, we need to
// subtract the total keys used by the second and third methods from the total.
func CalculateCurrentTDXKeyCap(podList *corev1.PodList, TDXKeyNumber []int) int {
	usedTDXKey := getTDXKeyTotalRequestsAndLimits(podList)
	// not kubevirt used key = current used - kubevirt used
	otherTDXKey := TDXKeyNumber[1] - usedTDXKey
	// kubevirt tdx key capacity = total - not kubevirt used key
	curTDXKeyCap := TDXKeyNumber[0] - otherTDXKey

	return curTDXKeyCap
}
