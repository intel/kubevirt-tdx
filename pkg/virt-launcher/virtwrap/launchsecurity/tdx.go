/*
 * this file is part of the kubevirt project
 *
 * licensed under the apache license, version 2.0 (the "license");
 * you may not use this file except in compliance with the license.
 * you may obtain a copy of the license at
 *
 *     http://www.apache.org/licenses/license-2.0
 *
 * unless required by applicable law or agreed to in writing, software
 * distributed under the license is distributed on an "as is" basis,
 * without warranties or conditions of any kind, either express or implied.
 * see the license for the specific language governing permissions and
 * limitations under the license.
 *
 * copyright 2023 red hat, inc.
 *
 */

package launchsecurity

const (
	// Guest policy as defined in Intel TDX API specification
	TDXPolicyNoDebug = "0x10000000"
)

func TDXPolicy() string {
	return TDXPolicyNoDebug
}
