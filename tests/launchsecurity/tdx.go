package launchsecurity

import (
	expect "github.com/google/goexpect"
	. "github.com/onsi/ginkgo/v2"
	. "github.com/onsi/gomega"

	virtconfig "kubevirt.io/kubevirt/pkg/virt-config"
	"kubevirt.io/kubevirt/tests"
	"kubevirt.io/kubevirt/tests/console"
	"kubevirt.io/kubevirt/tests/framework/checks"
	"kubevirt.io/kubevirt/tests/libvmi"
)

var _ = Describe("[sig-compute]Intel Trust Domain Extensions (TDX)", func() {
	BeforeEach(func() {
		checks.SkipTestIfNoFeatureGate(virtconfig.WorkloadEncryptionTDX)
	})

	Context("lifecycle", func() {
		BeforeEach(func() {
			checks.SkipTestIfNotTDXCapable()
		})

		It("should start a TDX VM", func() {
			const secureBoot = false
			vmi := libvmi.NewFedora(libvmi.WithUefi(secureBoot), libvmi.WithTDX())
			vmi = tests.RunVMIAndExpectLaunch(vmi, 240)

			By("Expecting the VirtualMachineInstance console")
			Expect(console.LoginToFedora(vmi)).To(Succeed())

			By("Verifying that TDX is enabled in the guest")
			err := console.SafeExpectBatch(vmi, []expect.Batcher{
				&expect.BSnd{S: "\n"},
				&expect.BExp{R: console.PromptExpression},
				&expect.BSnd{S: "dmesg | grep --color=never tdx\n"},
				&expect.BExp{R: "tdx: Guest initialized"},
				&expect.BSnd{S: "\n"},
				&expect.BExp{R: console.PromptExpression},
			}, 30)
			Expect(err).ToNot(HaveOccurred())
		})
	})
})
