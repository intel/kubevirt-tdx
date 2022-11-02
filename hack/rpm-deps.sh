#!/usr/bin/env bash

set -ex

source hack/common.sh
source hack/bootstrap.sh
source hack/config.sh

LIBVIRT_VERSION=${LIBVIRT_VERSION:-0:8.0.0-2.module_el8.6.0+1087+b42c8331}
QEMU_VERSION=${QEMU_VERSION:-15:6.2.0-5.module_el8.6.0+1087+b42c8331}
SEABIOS_VERSION=${SEABIOS_VERSION:-0:1.15.0-1.module_el8.6.0+1087+b42c8331}
EDK2_VERSION=${EDK2_VERSION:-0:20220126gitbb1bba3d77-2.el8}
LIBGUESTFS_VERSION=${LIBGUESTFS_VERSION:-1:1.44.0-5.module_el8.6.0+1087+b42c8331}
PASST_VERSION=${PASST_VERSION:-0:0.git.2022_08_29.60ffc5b-1.el8}
SINGLE_ARCH=${SINGLE_ARCH:-""}

bazeldnf_repos="--repofile rpm/repo.yaml"
if [ "${CUSTOM_REPO}" ]; then
    bazeldnf_repos="--repofile ${CUSTOM_REPO} ${bazeldnf_repos}"
fi

# Packages that we want to be included in all container images.
#
# Further down we define per-image package lists, which just like
# this one are split across multiple variables:
#
#   * $foo_main  => packages that we want to have in the image;
#
#   * $foo_ARCH  => same as above, but specific to one architecture;
#
#   * $foo_extra => (indirect) dependencies that can be satisfied by
#                   more than one package.
#
# Listing the "extra" packages explicitly ensures that bazeldnf will
# always reach the same solution, and thus keeps things reproducible

centos_main="
  acl
  curl
  vim-minimal
"
centos_extra="
  coreutils-single
  glibc-minimal-langpack
  libcurl-minimal
"

# create a rpmtree for our test image with misc. tools.
testimage_main="
  device-mapper
  e2fsprogs
  iputils
  nmap-ncat
  procps-ng
  intel-mvp-tdx-qemu-img-${QEMU_VERSION}
  tar
  util-linux
  which
"

# create a rpmtree for libvirt-devel. libvirt-devel is needed for compilation and unit-testing.
libvirtdevel_main="
  intel-mvp-tdx-libvirt-devel-${LIBVIRT_VERSION}
"
libvirtdevel_extra="
  keyutils-libs
  krb5-libs
  libmount
  lz4-libs
"

# TODO: Remove the sssd-client and use a better sssd config
# This requires a way to inject files into the sandbox via bazeldnf
sandboxroot_main="
  findutils
  gcc
  glibc-static
  python36
  sssd-client
"

# create a rpmtree for virt-launcher and virt-handler. This is the OS for our node-components.
launcherbase_main="
  intel-mvp-tdx-libvirt-client-${LIBVIRT_VERSION}
  intel-mvp-tdx-libvirt-daemon-driver-qemu-${LIBVIRT_VERSION}
  passt-${PASST_VERSION}
  intel-mvp-tdx-qemu-kvm-core-${QEMU_VERSION}
"
launcherbase_x86_64="
  intel-mvp-tdx-tdvf-${EDK2_VERSION}
  intel-mvp-tdx-qemu-kvm-hw-usbredir-${QEMU_VERSION}
  seabios-${SEABIOS_VERSION}
"
launcherbase_aarch64="
  edk2-aarch64-${EDK2_VERSION}
"
launcherbase_extra="
  ethtool
  findutils
  iptables
  nftables
  nmap-ncat
  procps-ng
  selinux-policy
  selinux-policy-targeted
  tar
  xorriso
"

handlerbase_main="
  intel-mvp-tdx-qemu-img-${QEMU_VERSION}
"
handlerbase_extra="
  findutils
  iproute
  iptables
  nftables
  procps-ng
  selinux-policy
  selinux-policy-targeted
  tar
  util-linux
  xorriso
"

libguestfstools_main="
  file
  libguestfs-tools-${LIBGUESTFS_VERSION}
  intel-mvp-tdx-libvirt-daemon-driver-qemu-${LIBVIRT_VERSION}
  intel-mvp-tdx-qemu-kvm-core-${QEMU_VERSION}
  seabios-${SEABIOS_VERSION}
  tar
"
libguestfstools_x86_64="
  intel-mvp-tdx-tdvf-${EDK2_VERSION}
"

exportserverbase_main="
  tar
"

# get latest repo data from repo.yaml
bazel run \
    --config=${ARCHITECTURE} \
    //:bazeldnf -- fetch \
    ${bazeldnf_repos}

if [ -z "${SINGLE_ARCH}" ] || [ "${SINGLE_ARCH}" == "x86_64" ]; then

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name testimage_x86_64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $testimage_main

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name libvirt-devel_x86_64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $libvirtdevel_main \
        $libvirtdevel_extra

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name sandboxroot_x86_64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $sandboxroot_main

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name launcherbase_x86_64 \
        --basesystem centos-stream-release \
        --force-ignore-with-dependencies '^mozjs60' \
        --force-ignore-with-dependencies 'python' \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $launcherbase_main \
        $launcherbase_x86_64 \
        $launcherbase_extra

    # create a rpmtree for virt-handler
    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name handlerbase_x86_64 \
        --basesystem centos-stream-release \
        --force-ignore-with-dependencies 'python' \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $handlerbase_main \
        $handlerbase_extra

    bazel run \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name libguestfs-tools \
        --basesystem centos-stream-release \
        $centos_main \
        $centos_extra \
        $libguestfstools_main \
        $libguestfstools_x86_64 \
        $libguestfstools_extra \
        ${bazeldnf_repos} \
        --force-ignore-with-dependencies '^(kernel-|linux-firmware)' \
        --force-ignore-with-dependencies '^(python[3]{0,1}-)' \
        --force-ignore-with-dependencies '^mozjs60' \
        --force-ignore-with-dependencies '^(intel-mvp-tdx-libvirt-daemon-kvm|swtpm)' \
        --force-ignore-with-dependencies '^(man-db|mandoc)' \
        --force-ignore-with-dependencies '^dbus'

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name exportserverbase_x86_64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $exportserverbase_main

    # remove all RPMs which are no longer referenced by a rpmtree
    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- prune

    # update tar2files targets which act as an adapter between rpms
    # and cc_library which we need for virt-launcher and virt-handler
    bazel run \
        --config=${ARCHITECTURE} \
        //rpm:ldd_x86_64

    # regenerate sandboxes
    rm ${SANDBOX_DIR} -rf
    kubevirt::bootstrap::regenerate x86_64
fi

if [ -z "${SINGLE_ARCH}" ] || [ "${SINGLE_ARCH}" == "aarch64" ]; then

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name testimage_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $testimage_main

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name libvirt-devel_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $libvirtdevel_main \
        $libvirtdevel_extra

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name sandboxroot_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $sandboxroot_main

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name launcherbase_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        --force-ignore-with-dependencies '^mozjs60' \
        --force-ignore-with-dependencies 'python' \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $launcherbase_main \
        $launcherbase_aarch64 \
        $launcherbase_extra

    # create a rpmtree for virt-handler
    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name handlerbase_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        --force-ignore-with-dependencies 'python' \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $handlerbase_main \
        $handlerbase_extra

    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- rpmtree \
        --public --nobest \
        --name exportserverbase_aarch64 --arch aarch64 \
        --basesystem centos-stream-release \
        ${bazeldnf_repos} \
        $centos_main \
        $centos_extra \
        $exportserverbase_main

    # remove all RPMs which are no longer referenced by a rpmtree
    bazel run \
        --config=${ARCHITECTURE} \
        //:bazeldnf -- prune

    # update tar2files targets which act as an adapter between rpms
    # and cc_library which we need for virt-launcher and virt-handler
    bazel run \
        --config=${ARCHITECTURE} \
        //rpm:ldd_aarch64

    # regenerate sandboxes
    rm ${SANDBOX_DIR} -rf
    kubevirt::bootstrap::regenerate aarch64
fi
