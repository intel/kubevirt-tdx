workspace(name = "kubevirt")

load("//third_party:deps.bzl", "deps")

deps()

# register crosscompiler toolchains
load("//bazel/toolchain:toolchain.bzl", "register_all_toolchains")

register_all_toolchains()

load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
    "http_file",
)
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "rules_python",
    sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    urls = [
        "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        "https://storage.googleapis.com/builddeps/934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    ],
)

# Additional bazel rules
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_proto",
    sha256 = "bc12122a5ae4b517fa423ea03a8d82ea6352d5127ea48cb54bc324e8ab78493c",
    strip_prefix = "rules_proto-af6481970a34554c6942d993e194a9aed7987780",
    urls = [
        "https://github.com/bazelbuild/rules_proto/archive/af6481970a34554c6942d993e194a9aed7987780.tar.gz",
        "https://storage.googleapis.com/builddeps/bc12122a5ae4b517fa423ea03a8d82ea6352d5127ea48cb54bc324e8ab78493c",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.29.0/rules_go-v0.29.0.zip",
        "https://storage.googleapis.com/builddeps/2b1641428dff9018f9e85c0384f03ec6c10660d935b750e3fa1492a281a53b0f",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        "https://storage.googleapis.com/builddeps/de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
    ],
)

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "95d39fd84ff4474babaf190450ee034d958202043e366b9fc38f438c9e6c3334",
    strip_prefix = "rules_docker-0.16.0",
    urls = [
        "https://github.com/bazelbuild/rules_docker/releases/download/v0.16.0/rules_docker-v0.16.0.tar.gz",
        "https://storage.googleapis.com/builddeps/95d39fd84ff4474babaf190450ee034d958202043e366b9fc38f438c9e6c3334",
    ],
)

http_archive(
    name = "com_github_ash2k_bazel_tools",
    sha256 = "80ba082177c93e43a7c085a8566c7f11654dbae41da7da0da52e0ed2e917cd12",
    strip_prefix = "bazel-tools-6e2a416f565062955735edcfae881cdba2b7abf7",
    urls = [
        "https://github.com/ash2k/bazel-tools/archive/6e2a416f565062955735edcfae881cdba2b7abf7.zip",
        "https://storage.googleapis.com/builddeps/80ba082177c93e43a7c085a8566c7f11654dbae41da7da0da52e0ed2e917cd12",
    ],
)

# Disk images
http_file(
    name = "alpine_image",
    sha256 = "e97eaedb3bff39a081d1d7e67629d5c0e8fb39677d6a9dd1eaf2752e39061e02",
    urls = [
        "https://dl-cdn.alpinelinux.org/alpine/v3.15/releases/x86_64/alpine-virt-3.15.0-x86_64.iso",
        "https://storage.googleapis.com/builddeps/e97eaedb3bff39a081d1d7e67629d5c0e8fb39677d6a9dd1eaf2752e39061e02",
    ],
)

http_file(
    name = "alpine_image_aarch64",
    sha256 = "f302cf1b2dbbd0661b8f53b167f24131c781b86ab3ae059654db05cd62d3c39c",
    urls = [
        "https://dl-cdn.alpinelinux.org/alpine/v3.15/releases/aarch64/alpine-virt-3.15.0-aarch64.iso",
        "https://storage.googleapis.com/builddeps/f302cf1b2dbbd0661b8f53b167f24131c781b86ab3ae059654db05cd62d3c39c",
    ],
)

http_file(
    name = "cirros_image",
    sha256 = "932fcae93574e242dc3d772d5235061747dfe537668443a1f0567d893614b464",
    urls = [
        "https://download.cirros-cloud.net/0.5.2/cirros-0.5.2-x86_64-disk.img",
        "https://storage.googleapis.com/builddeps/932fcae93574e242dc3d772d5235061747dfe537668443a1f0567d893614b464",
    ],
)

http_file(
    name = "cirros_image_aarch64",
    sha256 = "889c1117647b3b16cfc47957931c6573bf8e755fc9098fdcad13727b6c9f2629",
    urls = [
        "https://download.cirros-cloud.net/0.5.2/cirros-0.5.2-aarch64-disk.img",
        "https://storage.googleapis.com/builddeps/889c1117647b3b16cfc47957931c6573bf8e755fc9098fdcad13727b6c9f2629",
    ],
)

http_file(
    name = "virtio_win_image",
    sha256 = "b8a4bc66835c43091a85d35a10b59bd8b1b62b55ea9f02ec754f68bd32e82c0e",
    urls = [
        "https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.217-1/virtio-win-0.1.217.iso",
        "https://storage.googleapis.com/builddeps/b8a4bc66835c43091a85d35a10b59bd8b1b62b55ea9f02ec754f68bd32e82c0e",
    ],
)

http_archive(
    name = "bazeldnf",
    sha256 = "c37709d05ad7eae4d32d7a525f098fd026483ada5e11cdf84d47028222796605",
    strip_prefix = "bazeldnf-0.5.2",
    urls = [
        "https://github.com/rmohr/bazeldnf/archive/v0.5.2.tar.gz",
        "https://storage.googleapis.com/builddeps/c37709d05ad7eae4d32d7a525f098fd026483ada5e11cdf84d47028222796605",
    ],
)

load(
    "@io_bazel_rules_go//go:deps.bzl",
    "go_register_toolchains",
    "go_rules_dependencies",
)
load("@bazeldnf//:deps.bzl", "bazeldnf_dependencies", "rpm")

go_rules_dependencies()

go_register_toolchains(
    go_version = "1.17.8",
    nogo = "@//:nogo_vet",
)

load("@com_github_ash2k_bazel_tools//goimports:deps.bzl", "goimports_dependencies")

goimports_dependencies()

load(
    "@bazel_gazelle//:deps.bzl",
    "gazelle_dependencies",
    "go_repository",
)

gazelle_dependencies()

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "git_repository",
)

# Winrmcli dependencies
go_repository(
    name = "com_github_masterzen_winrmcli",
    commit = "c85a68ee8b6e3ac95af2a5fd62d2f41c9e9c5f32",
    importpath = "github.com/masterzen/winrm-cli",
)

# Winrmcp deps
go_repository(
    name = "com_github_packer_community_winrmcp",
    commit = "c76d91c1e7db27b0868c5d09e292bb540616c9a2",
    importpath = "github.com/packer-community/winrmcp",
)

go_repository(
    name = "com_github_masterzen_winrm_cli",
    commit = "6f0c57dee4569c04f64c44c335752b415e5d73a7",
    importpath = "github.com/masterzen/winrm-cli",
)

go_repository(
    name = "com_github_masterzen_winrm",
    commit = "1d17eaf15943ca3554cdebb3b1b10aaa543a0b7e",
    importpath = "github.com/masterzen/winrm",
)

go_repository(
    name = "com_github_nu7hatch_gouuid",
    commit = "179d4d0c4d8d407a32af483c2354df1d2c91e6c3",
    importpath = "github.com/nu7hatch/gouuid",
)

go_repository(
    name = "com_github_dylanmei_iso8601",
    commit = "2075bf119b58e5576c6ed9f867b8f3d17f2e54d4",
    importpath = "github.com/dylanmei/iso8601",
)

go_repository(
    name = "com_github_gofrs_uuid",
    commit = "abfe1881e60ef34074c1b8d8c63b42565c356ed6",
    importpath = "github.com/gofrs/uuid",
)

go_repository(
    name = "com_github_christrenkamp_goxpath",
    commit = "c5096ec8773dd9f554971472081ddfbb0782334e",
    importpath = "github.com/ChrisTrenkamp/goxpath",
)

go_repository(
    name = "com_github_azure_go_ntlmssp",
    commit = "4a21cbd618b459155f8b8ee7f4491cd54f5efa77",
    importpath = "github.com/Azure/go-ntlmssp",
)

go_repository(
    name = "com_github_masterzen_simplexml",
    commit = "31eea30827864c9ab643aa5a0d5b2d4988ec8409",
    importpath = "github.com/masterzen/simplexml",
)

go_repository(
    name = "org_golang_x_crypto",
    commit = "4def268fd1a49955bfb3dda92fe3db4f924f2285",
    importpath = "golang.org/x/crypto",
)

# override rules_docker issue with this dependency
# rules_docker 0.16 uses 0.1.4, bit since there the checksum changed, which is very weird, going with 0.1.4.1 to
go_repository(
    name = "com_github_google_go_containerregistry",
    importpath = "github.com/google/go-containerregistry",
    sha256 = "bc0136a33f9c1e4578a700f7afcdaa1241cfff997d6bba695c710d24c5ae26bd",
    strip_prefix = "google-go-containerregistry-efb2d62",
    type = "tar.gz",
    urls = ["https://api.github.com/repos/google/go-containerregistry/tarball/efb2d62d93a7705315b841d0544cb5b13565ff2a"],  # v0.1.4.1
)

# bazel docker rules
load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_image",
    "container_pull",
)
load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

# Pull base image fedora31
# WARNING: please update any automated process to push this image to quay.io
# instead of index.docker.io
container_pull(
    name = "fedora",
    digest = "sha256:5e2b864cfe165fa7da6606b29a9e60549eb7cc9ae7fb574614110d1494b0f0c2",
    registry = "quay.io",
    repository = "kubevirtci/fedora",
    tag = "31",
)

# As rpm package in https://dl.fedoraproject.org/pub/fedora/linux/releases/31 is empty, we use fedora 32 here.
# TODO add fedora image to quay.io
container_pull(
    name = "fedora_aarch64",
    digest = "sha256:425676dd30f2c85ba3593b82040ce03341cd6dc4e38838e57c8bc5eef95b5f81",
    registry = "index.docker.io",
    repository = "library/fedora",
    tag = "32",
)

# Pull go_image_base
container_pull(
    name = "go_image_base",
    digest = "sha256:f65536ce108fcc41cdcd5cb101006fcb82b9a1527409263feb9e34032f00bda0",
    registry = "gcr.io",
    repository = "distroless/base",
)

container_pull(
    name = "go_image_base_aarch64",
    digest = "sha256:789c477fbd30a7d85435450306e54f20c53938e40af644284a229d852db30dde",
    registry = "gcr.io",
    repository = "distroless/base",
)

# Pull nfs-server image
# WARNING: please update any automated process to push this image to quay.io
# instead of index.docker.io
# TODO build nfs-server for multi-arch
container_pull(
    name = "nfs-server",
    digest = "sha256:8c1fa882dddb2885c4152e9ce632c466f4b8dce29339455e9b6bfe71f0a3d3ef",
    registry = "quay.io",
    repository = "kubevirtci/nfs-ganesha",  # see https://github.com/slintes/docker-nfs-ganesha
)

container_pull(
    name = "nfs-server_aarch64",
    digest = "sha256:8c1fa882dddb2885c4152e9ce632c466f4b8dce29339455e9b6bfe71f0a3d3ef",
    registry = "quay.io",
    repository = "kubevirtci/nfs-ganesha",  # see https://github.com/slintes/docker-nfs-ganesha
)

# Pull fedora container-disk preconfigured with ci tooling
# like stress and qemu guest agent pre-configured
# TODO build fedora_with_test_tooling for multi-arch
container_pull(
    name = "fedora_with_test_tooling",
    digest = "sha256:da6c118dbd9ac643713c1737cbaa43dcc7386b269b4beb0984413168f3a5f2d3",
    registry = "quay.io",
    repository = "kubevirtci/fedora-with-test-tooling",
)

container_pull(
    name = "alpine_with_test_tooling",
    digest = "sha256:d1dab23ed46af711acb33e54b1dd2a7c6dfaab24227346a487748057e2c81d11",
    registry = "quay.io",
    repository = "kubevirtci/alpine-with-test-tooling-container-disk",
    tag = "2206291207-35b9c64",
)

container_pull(
    name = "fedora_with_test_tooling_aarch64",
    digest = "sha256:9b1371260c05086a24ac9effdbedca9759c885ea8db93de7f0339df3bcd5a5c3",
    registry = "quay.io",
    repository = "kubevirtci/fedora-with-test-tooling",
)

container_pull(
    name = "alpine-ext-kernel-boot-demo-container-base",
    digest = "sha256:a2ddb2f568bf3814e594a14bc793d5a655a61d5983f3561d60d02afa7bbc56b4",
    registry = "quay.io",
    repository = "kubevirt/alpine-ext-kernel-boot-demo",
)

# TODO build fedora_realtime for multi-arch
container_pull(
    name = "fedora_realtime",
    digest = "sha256:437f4e02986daf0058239f4a282d32304dcac629d5d1b4c75a74025f1ce22811",
    registry = "quay.io",
    repository = "kubevirt/fedora-realtime-container-disk",
)

load(
    "@io_bazel_rules_docker//go:image.bzl",
    _go_image_repos = "repositories",
)

_go_image_repos()

http_archive(
    name = "io_bazel_rules_container_rpm",
    sha256 = "151261f1b81649de6e36f027c945722bff31176f1340682679cade2839e4b1e1",
    strip_prefix = "rules_container_rpm-0.0.5",
    urls = [
        "https://github.com/rmohr/rules_container_rpm/archive/v0.0.5.tar.gz",
        "https://storage.googleapis.com/builddeps/151261f1b81649de6e36f027c945722bff31176f1340682679cade2839e4b1e1",
    ],
)

http_file(
    name = "libguestfs-appliance",
    sha256 = "51d38a062d1b91bd7cb3dd8e68354aae86f6a889b4bb68a358b3ab55030dc0c9",
    urls = [
        "https://storage.googleapis.com/kubevirt-prow/devel/release/kubevirt/libguestfs-appliance/appliance-1.44.0-linux-4.18.0-338-centos8.tar.xz",
    ],
)

# Get container-disk-v1alpha RPM's
http_file(
    name = "qemu-img",
    sha256 = "669250ad47aad5939cf4d1b88036fd95a94845d8e0bbdb05e933f3d2fe262fea",
    urls = ["https://storage.googleapis.com/builddeps/669250ad47aad5939cf4d1b88036fd95a94845d8e0bbdb05e933f3d2fe262fea"],
)

# some repos which are not part of go_rules anymore
go_repository(
    name = "com_github_golang_glog",
    importpath = "github.com/golang/glog",
    sum = "h1:VKtxabqXZkF25pY9ekfRL6a582T4P37/31XEstQ5p58=",
    version = "v0.0.0-20160126235308-23def4e6c14b",
)

go_repository(
    name = "org_golang_google_grpc",
    importpath = "google.golang.org/grpc",
    sum = "h1:M5a8xTlYTxwMn5ZFkwhRabsygDY5G8TYLyQDBxJNAxE=",
    version = "v1.30.0",
)

go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    sum = "h1:oWX7TPOiFAMXLq8o0ikBYfCJVlRHBcsciT5bXOrH628=",
    version = "v0.0.0-20190311183353-d8887717615a",
)

go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    sum = "h1:g61tztE5qeGQ89tm6NTjjM9VPIm088od1l6aSorWRWg=",
    version = "v0.3.0",
)

register_toolchains("//:py_toolchain")

go_repository(
    name = "org_golang_x_mod",
    build_file_generation = "on",
    build_file_proto_mode = "disable",
    importpath = "golang.org/x/mod",
    sum = "h1:RM4zey1++hCTbCVQfnWeKs9/IEsaBLA8vTkd0WVtmH4=",
    version = "v0.3.0",
)

go_repository(
    name = "org_golang_x_xerrors",
    build_file_generation = "on",
    build_file_proto_mode = "disable",
    importpath = "golang.org/x/xerrors",
    sum = "h1:go1bK/D/BFZV2I8cIQd1NKEZ+0owSTG1fDTci4IqFcE=",
    version = "v0.0.0-20200804184101-5ec99f83aff1",
)

bazeldnf_dependencies()

rpm(
    name = "acl-0__2.2.53-1.el8.aarch64",
    sha256 = "47c2cc5872174c548de1096dc5673ee91349209d89e0193a4793955d6865b3b1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/acl-2.2.53-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/47c2cc5872174c548de1096dc5673ee91349209d89e0193a4793955d6865b3b1",
    ],
)

rpm(
    name = "acl-0__2.2.53-1.el8.x86_64",
    sha256 = "227de6071cd3aeca7e10ad386beaf38737d081e06350d02208a3f6a2c9710385",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/acl-2.2.53-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/227de6071cd3aeca7e10ad386beaf38737d081e06350d02208a3f6a2c9710385",
    ],
)

rpm(
    name = "alsa-lib-0__1.2.9-1.el8.x86_64",
    sha256 = "c003a439f00674cefa68addc1aaec2254c0b521b618617d877115ef87c9d9a12",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/alsa-lib-1.2.9-1.el8.x86_64.rpm"],
)

rpm(
    name = "audit-libs-0__3.0.7-4.el8.aarch64",
    sha256 = "2b05f70005d024a2b540a56afd9e05729c07c9dee120ff01100a21e21781f017",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/audit-libs-3.0.7-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2b05f70005d024a2b540a56afd9e05729c07c9dee120ff01100a21e21781f017",
    ],
)

rpm(
    name = "audit-libs-0__3.0.7-5.el8.x86_64",
    sha256 = "38bbb4fdd04a7a20e0b05d42cbd1de206bd653a1ce22e6c4ebd285c24767ffe9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/audit-libs-3.0.7-5.el8.x86_64.rpm"],
)

rpm(
    name = "augeas-libs-0__1.12.0-8.el8.x86_64",
    sha256 = "8d871c7339ed515b012497d8fe97bda5252649c14edfce27ade65ccd1edb16df",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/augeas-libs-1.12.0-8.el8.x86_64.rpm"],
)

rpm(
    name = "autogen-libopts-0__5.18.12-8.el8.aarch64",
    sha256 = "a69b87111415322e6586ba6b35494d77af7d9d58b2d9dfaf0360e4f827622dd2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/autogen-libopts-5.18.12-8.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a69b87111415322e6586ba6b35494d77af7d9d58b2d9dfaf0360e4f827622dd2",
    ],
)

rpm(
    name = "autogen-libopts-0__5.18.12-8.el8.x86_64",
    sha256 = "c73af033015bfbdbe8a43e162b098364d148517d394910f8db5d33b76b93aa48",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/autogen-libopts-5.18.12-8.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/c73af033015bfbdbe8a43e162b098364d148517d394910f8db5d33b76b93aa48",
    ],
)

rpm(
    name = "basesystem-0__11-5.el8.aarch64",
    sha256 = "48226934763e4c412c1eb65df314e6879720b4b1ebcb3d07c126c9526639cb68",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/basesystem-11-5.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/48226934763e4c412c1eb65df314e6879720b4b1ebcb3d07c126c9526639cb68",
    ],
)

rpm(
    name = "basesystem-0__11-5.el8.x86_64",
    sha256 = "48226934763e4c412c1eb65df314e6879720b4b1ebcb3d07c126c9526639cb68",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/basesystem-11-5.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/48226934763e4c412c1eb65df314e6879720b4b1ebcb3d07c126c9526639cb68",
    ],
)

rpm(
    name = "bash-0__4.4.20-4.el8.aarch64",
    sha256 = "cb47111790ede91e0f1fb34817a27123a97e0304e7f7b6df06731fd391859f45",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/bash-4.4.20-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/cb47111790ede91e0f1fb34817a27123a97e0304e7f7b6df06731fd391859f45",
    ],
)

rpm(
    name = "bash-0__4.4.20-4.el8.x86_64",
    sha256 = "a104837b8aea5214122cf09c2de436db8f528812c1361c39f2d7471343dc509b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/bash-4.4.20-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/a104837b8aea5214122cf09c2de436db8f528812c1361c39f2d7471343dc509b",
    ],
)

rpm(
    name = "binutils-0__2.30-117.el8.aarch64",
    sha256 = "10cc7e5ae3939eb78ef345127f05428eb003482c91dff1506121bde6228ed55f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/binutils-2.30-117.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/10cc7e5ae3939eb78ef345127f05428eb003482c91dff1506121bde6228ed55f",
    ],
)

rpm(
    name = "binutils-0__2.30-121.el8.x86_64",
    sha256 = "4b786923bd74d573f3802a9517608f982d0df3bd76c8de90eea9ba57c28ef8b3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/binutils-2.30-121.el8.x86_64.rpm"],
)

rpm(
    name = "boost-atomic-0__1.66.0-13.el8.x86_64",
    sha256 = "582e24b683cbefbd6281036c177cab913e9bfe76f6a183caae1eff70983d2569",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-atomic-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-chrono-0__1.66.0-13.el8.x86_64",
    sha256 = "2d676a5e03854931f9a71a9ab32261dee9540b7fdd6c70a5fddf69bcea818882",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-chrono-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-date-time-0__1.66.0-13.el8.x86_64",
    sha256 = "34100778783c5748230b82cd259418a4d266fcfb2bcb6f30e7b854f7fed90c8f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-date-time-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-iostreams-0__1.66.0-13.el8.x86_64",
    sha256 = "5a85438daaf569dfba73e4708ce9987a84245ce797b2102a06f2043c96a31beb",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-iostreams-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-program-options-0__1.66.0-13.el8.x86_64",
    sha256 = "015a3d3a9c7fba7b4ec16cf73512308f9b457410598a24c1a24c50ad8f2ef2a3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-program-options-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-random-0__1.66.0-13.el8.x86_64",
    sha256 = "e7991373724e31b0bc6ecd4208f509f9674cbe16f45e5ae50a6fdbd2e5456e57",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-random-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-regex-0__1.66.0-13.el8.x86_64",
    sha256 = "185a1a5f4c642b14c7a700b4c757f962f4d959dd5a3018c44e43b10071081bb8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/boost-regex-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-system-0__1.66.0-13.el8.x86_64",
    sha256 = "9bce2a6d122e4afedf305e6811d8db89046812f7e13203eb83ec608af65b3ba4",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-system-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "boost-thread-0__1.66.0-13.el8.x86_64",
    sha256 = "fa1a547d4bb6b481b74afb73833c81e91e8813056500464dbaef8c172d00be74",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/boost-thread-1.66.0-13.el8.x86_64.rpm"],
)

rpm(
    name = "bzip2-0__1.0.6-26.el8.aarch64",
    sha256 = "b18d9f23161d7d5de93fa72a56c645762deefbc0f3e5a095bb8d9e3cf09521e6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/bzip2-1.0.6-26.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b18d9f23161d7d5de93fa72a56c645762deefbc0f3e5a095bb8d9e3cf09521e6",
    ],
)

rpm(
    name = "bzip2-0__1.0.6-26.el8.x86_64",
    sha256 = "78596f457c3d737a97a4edfe9a03a01f593606379c281701ab7f7eba13ecaf18",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/bzip2-1.0.6-26.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/78596f457c3d737a97a4edfe9a03a01f593606379c281701ab7f7eba13ecaf18",
    ],
)

rpm(
    name = "bzip2-libs-0__1.0.6-26.el8.aarch64",
    sha256 = "a4451cae0e8a3307228ed8ac7dc9bab7de77fcbf2004141daa7f986f5dc9b381",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/bzip2-libs-1.0.6-26.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a4451cae0e8a3307228ed8ac7dc9bab7de77fcbf2004141daa7f986f5dc9b381",
    ],
)

rpm(
    name = "bzip2-libs-0__1.0.6-26.el8.x86_64",
    sha256 = "19d66d152b745dbd49cea9d21c52aec0ec4d4321edef97a342acd3542404fa31",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/bzip2-libs-1.0.6-26.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/19d66d152b745dbd49cea9d21c52aec0ec4d4321edef97a342acd3542404fa31",
    ],
)

rpm(
    name = "ca-certificates-0__2022.2.54-80.2.el8.aarch64",
    sha256 = "3200d42d5585afa93a94600614a82b6e804139b06fff151576a53effd221e12b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/ca-certificates-2022.2.54-80.2.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3200d42d5585afa93a94600614a82b6e804139b06fff151576a53effd221e12b",
    ],
)

rpm(
    name = "ca-certificates-0__2022.2.54-80.2.el8.x86_64",
    sha256 = "3200d42d5585afa93a94600614a82b6e804139b06fff151576a53effd221e12b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ca-certificates-2022.2.54-80.2.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3200d42d5585afa93a94600614a82b6e804139b06fff151576a53effd221e12b",
    ],
)

rpm(
    name = "cairo-0__1.15.12-6.el8.x86_64",
    sha256 = "8d94b1b954d06a5443c4e8036c1d51121a6724c1508f37539bbff96dbf806a92",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/cairo-1.15.12-6.el8.x86_64.rpm"],
)

rpm(
    name = "capstone-0__4.0.2-5.el8.x86_64",
    sha256 = "bb184efdedc550c927d5b1cb3836ebe3337176970db15d0ef8e786183552e4c9",
    urls = ["https://mirrors.ustc.edu.cn/epel/8/Everything/x86_64/Packages/c/capstone-4.0.2-5.el8.x86_64.rpm"],
)

rpm(
    name = "celt051-0__0.5.1.3-15.el8.x86_64",
    sha256 = "f689f4c20fb5de0e9c39b9c5f81e44fe89833aead1597de6454c2b459a2d1742",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/celt051-0.5.1.3-15.el8.x86_64.rpm"],
)

rpm(
    name = "centos-gpg-keys-1__8-6.el8.aarch64",
    sha256 = "567dd699e703dc6f5fa6ddb5548bf0dbd3bda08a0a6b1d10b32fa19012409cd0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/centos-gpg-keys-8-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/567dd699e703dc6f5fa6ddb5548bf0dbd3bda08a0a6b1d10b32fa19012409cd0",
    ],
)

rpm(
    name = "centos-gpg-keys-1__8-6.el8.x86_64",
    sha256 = "567dd699e703dc6f5fa6ddb5548bf0dbd3bda08a0a6b1d10b32fa19012409cd0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-gpg-keys-8-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/567dd699e703dc6f5fa6ddb5548bf0dbd3bda08a0a6b1d10b32fa19012409cd0",
    ],
)

rpm(
    name = "centos-stream-release-0__8.6-1.el8.aarch64",
    sha256 = "3b3b86cb51f62632995ace850fbed9efc65381d639f1e1c5ceeff7ccf2dd6151",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/centos-stream-release-8.6-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3b3b86cb51f62632995ace850fbed9efc65381d639f1e1c5ceeff7ccf2dd6151",
    ],
)

rpm(
    name = "centos-stream-release-0__8.6-1.el8.x86_64",
    sha256 = "3b3b86cb51f62632995ace850fbed9efc65381d639f1e1c5ceeff7ccf2dd6151",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-stream-release-8.6-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3b3b86cb51f62632995ace850fbed9efc65381d639f1e1c5ceeff7ccf2dd6151",
    ],
)

rpm(
    name = "centos-stream-repos-0__8-6.el8.aarch64",
    sha256 = "ff0a2d1fb5b00e9a26b05a82675d0dcdf0378ee5476f9ae765b32399c2ee561f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/centos-stream-repos-8-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/ff0a2d1fb5b00e9a26b05a82675d0dcdf0378ee5476f9ae765b32399c2ee561f",
    ],
)

rpm(
    name = "centos-stream-repos-0__8-6.el8.x86_64",
    sha256 = "ff0a2d1fb5b00e9a26b05a82675d0dcdf0378ee5476f9ae765b32399c2ee561f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/centos-stream-repos-8-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/ff0a2d1fb5b00e9a26b05a82675d0dcdf0378ee5476f9ae765b32399c2ee561f",
    ],
)

rpm(
    name = "chkconfig-0__1.19.1-1.el8.aarch64",
    sha256 = "be370bfc2f375cdbfc1079b19423142236770cf67caf74cdb12a7aef8a29c8c5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/chkconfig-1.19.1-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/be370bfc2f375cdbfc1079b19423142236770cf67caf74cdb12a7aef8a29c8c5",
    ],
)

rpm(
    name = "chkconfig-0__1.19.2-1.el8.x86_64",
    sha256 = "1a95f12829e8b8878980d5cdb6d3ae39a5f075d2a4298cb3d51399f86baafbd0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/chkconfig-1.19.2-1.el8.x86_64.rpm"],
)

rpm(
    name = "coreutils-single-0__8.30-13.el8.aarch64",
    sha256 = "0f560179f5b79ee62e0d71efb8d67f0d8eca9b31b752064a507c1052985e1251",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/coreutils-single-8.30-13.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0f560179f5b79ee62e0d71efb8d67f0d8eca9b31b752064a507c1052985e1251",
    ],
)

rpm(
    name = "coreutils-single-0__8.30-15.el8.x86_64",
    sha256 = "96abd7ec6c1fdfbf845fe71892c50c4ee20dfede79c8070805a0e469c700e2fb",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/coreutils-single-8.30-15.el8.x86_64.rpm"],
)

rpm(
    name = "cpp-0__8.5.0-15.el8.aarch64",
    sha256 = "36bb703e9305764b2075c56d79f98d4ff86a8a9dbcb59c2ce2a8eef37b4b98a2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/cpp-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/36bb703e9305764b2075c56d79f98d4ff86a8a9dbcb59c2ce2a8eef37b4b98a2",
    ],
)

rpm(
    name = "cpp-0__8.5.0-20.el8.x86_64",
    sha256 = "f480db50c407645a56a64666210753086d913d54e73db01516c19be39c73d546",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/cpp-8.5.0-20.el8.x86_64.rpm"],
)

rpm(
    name = "cracklib-0__2.9.6-15.el8.aarch64",
    sha256 = "54efb853142572e1c2872e351838fc3657b662722ff6b2913d1872d4752a0eb8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cracklib-2.9.6-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/54efb853142572e1c2872e351838fc3657b662722ff6b2913d1872d4752a0eb8",
    ],
)

rpm(
    name = "cracklib-0__2.9.6-15.el8.x86_64",
    sha256 = "dbbc9e20caabc30070354d91f61f383081f6d658e09d3c09e6df8764559e5aca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cracklib-2.9.6-15.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/dbbc9e20caabc30070354d91f61f383081f6d658e09d3c09e6df8764559e5aca",
    ],
)

rpm(
    name = "cracklib-dicts-0__2.9.6-15.el8.aarch64",
    sha256 = "d61741af0ffe96c55f588dd164b9c3c93e7c7175c7e616db25990ab3e16e0f22",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cracklib-dicts-2.9.6-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/d61741af0ffe96c55f588dd164b9c3c93e7c7175c7e616db25990ab3e16e0f22",
    ],
)

rpm(
    name = "cracklib-dicts-0__2.9.6-15.el8.x86_64",
    sha256 = "f1ce23ee43c747a35367dada19ca200a7758c50955ccc44aa946b86b647077ca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cracklib-dicts-2.9.6-15.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f1ce23ee43c747a35367dada19ca200a7758c50955ccc44aa946b86b647077ca",
    ],
)

rpm(
    name = "crypto-policies-0__20211116-1.gitae470d6.el8.aarch64",
    sha256 = "8fb69892af346bacf18e8f8e7e8098e09c6ef9547abab9c39f7e729db06c3d1e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/crypto-policies-20211116-1.gitae470d6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/8fb69892af346bacf18e8f8e7e8098e09c6ef9547abab9c39f7e729db06c3d1e",
    ],
)

rpm(
    name = "crypto-policies-0__20221215-1.gitece0092.el8.x86_64",
    sha256 = "29d99b0985833aea0b2590036dcbb03e225877c30a18c707f2e149eaf5ba3697",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/crypto-policies-20221215-1.gitece0092.el8.noarch.rpm"],
)

rpm(
    name = "crypto-policies-scripts-0__20221215-1.gitece0092.el8.x86_64",
    sha256 = "3ac08f29a4b02fc24b115487e033472af427a4f1e315e89eada474cfa6543922",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/crypto-policies-scripts-20221215-1.gitece0092.el8.noarch.rpm"],
)

rpm(
    name = "cryptsetup-libs-0__2.3.7-2.el8.aarch64",
    sha256 = "15a9d91ba7f5c192bee3e0d511e9b501c109a53c68120987e3f79ed88b1f69b5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cryptsetup-libs-2.3.7-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/15a9d91ba7f5c192bee3e0d511e9b501c109a53c68120987e3f79ed88b1f69b5",
    ],
)

rpm(
    name = "cryptsetup-libs-0__2.3.7-5.el8.x86_64",
    sha256 = "fe2e1ef00d792f44b27afc53dff8a99405de7496756ae3f5f10e91ba2bd1e460",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/cryptsetup-libs-2.3.7-5.el8.x86_64.rpm"],
)

rpm(
    name = "curl-0__7.61.1-25.el8.aarch64",
    sha256 = "56d7d77a32456f4c6b84ae4c6251d7ddfe2fb7097f9ecf8ba5e5834f7b7611c7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/curl-7.61.1-25.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/56d7d77a32456f4c6b84ae4c6251d7ddfe2fb7097f9ecf8ba5e5834f7b7611c7",
    ],
)

rpm(
    name = "curl-0__7.61.1-31.el8.x86_64",
    sha256 = "025a892ef5b63b903f1b7a7c2cb77b6bbeab477d2cca8790331c7666e5538bcd",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/curl-7.61.1-31.el8.x86_64.rpm"],
)

rpm(
    name = "cyrus-sasl-0__2.1.27-6.el8_5.aarch64",
    sha256 = "e7acd635ac3d42260807c3fd6eab8713e3177b88bceadd79fe10d0719bfbff00",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cyrus-sasl-2.1.27-6.el8_5.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/e7acd635ac3d42260807c3fd6eab8713e3177b88bceadd79fe10d0719bfbff00",
    ],
)

rpm(
    name = "cyrus-sasl-0__2.1.27-6.el8_5.x86_64",
    sha256 = "65a62affe9c99e597aabf117b8439a363761686c496723bc492dbfdcb6f60692",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cyrus-sasl-2.1.27-6.el8_5.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/65a62affe9c99e597aabf117b8439a363761686c496723bc492dbfdcb6f60692",
    ],
)

rpm(
    name = "cyrus-sasl-gssapi-0__2.1.27-6.el8_5.aarch64",
    sha256 = "9fac42ea86802ebaf480d7373155a019d0a85dfd8093189d17194334af466a15",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cyrus-sasl-gssapi-2.1.27-6.el8_5.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9fac42ea86802ebaf480d7373155a019d0a85dfd8093189d17194334af466a15",
    ],
)

rpm(
    name = "cyrus-sasl-gssapi-0__2.1.27-6.el8_5.x86_64",
    sha256 = "6c9a8d9adc93d1be7db41fe7327c4dcce144cefad3008e580f5e9cadb6155eb4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cyrus-sasl-gssapi-2.1.27-6.el8_5.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/6c9a8d9adc93d1be7db41fe7327c4dcce144cefad3008e580f5e9cadb6155eb4",
    ],
)

rpm(
    name = "cyrus-sasl-lib-0__2.1.27-6.el8_5.aarch64",
    sha256 = "984998500ff0d60cb8756fee9eaeb82a001b7323b1130955770f2fa824f8a937",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/cyrus-sasl-lib-2.1.27-6.el8_5.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/984998500ff0d60cb8756fee9eaeb82a001b7323b1130955770f2fa824f8a937",
    ],
)

rpm(
    name = "cyrus-sasl-lib-0__2.1.27-6.el8_5.x86_64",
    sha256 = "5bd6e1201d8b10c6f01f500c43f63204f1d2ec8a4d8ce53c741e611c81ffb404",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/cyrus-sasl-lib-2.1.27-6.el8_5.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5bd6e1201d8b10c6f01f500c43f63204f1d2ec8a4d8ce53c741e611c81ffb404",
    ],
)

rpm(
    name = "daxctl-libs-0__71.1-7.el8.x86_64",
    sha256 = "bfdabdc11a5e7095a56b0e628533842556dd66fb236416eab2a78f372032d042",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/daxctl-libs-71.1-7.el8.x86_64.rpm"],
)

rpm(
    name = "dbus-1__1.12.8-23.el8.aarch64",
    sha256 = "687dc9e92456cf34d3caf73b37b9a9ae5acc075aba6dbbbecc74a31bd2c6eab1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/dbus-1.12.8-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/687dc9e92456cf34d3caf73b37b9a9ae5acc075aba6dbbbecc74a31bd2c6eab1",
    ],
)

rpm(
    name = "dbus-1__1.12.8-25.el8.x86_64",
    sha256 = "4342c674ccbb82c03ac47df0708eb5956eb41278c941327095c542804cf4d4a9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-1.12.8-25.el8.x86_64.rpm"],
)

rpm(
    name = "dbus-common-1__1.12.8-23.el8.aarch64",
    sha256 = "3f5a3dbca29172f117e43d2551f0b80507ca29eed07c5d35b0374b6a5feff657",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/dbus-common-1.12.8-23.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3f5a3dbca29172f117e43d2551f0b80507ca29eed07c5d35b0374b6a5feff657",
    ],
)

rpm(
    name = "dbus-common-1__1.12.8-25.el8.x86_64",
    sha256 = "a608c816d0a628d61a72267bbe00ea037c4e0cc02c61c004789aa5e9310b8557",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-common-1.12.8-25.el8.noarch.rpm"],
)

rpm(
    name = "dbus-daemon-1__1.12.8-23.el8.aarch64",
    sha256 = "0b0a27298b5cd803e0344ce7e4a55ab157ecb6e7e9197e826d5b40c0d92649a8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/dbus-daemon-1.12.8-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0b0a27298b5cd803e0344ce7e4a55ab157ecb6e7e9197e826d5b40c0d92649a8",
    ],
)

rpm(
    name = "dbus-daemon-1__1.12.8-25.el8.x86_64",
    sha256 = "5b9714a8d78a0dda7cb9b3cf553989ac9ed837e0ab9d86b918c9b2da406d4856",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-daemon-1.12.8-25.el8.x86_64.rpm"],
)

rpm(
    name = "dbus-libs-1__1.12.8-23.el8.aarch64",
    sha256 = "31cb3418fc47087230b4b6bbba65a81e34e690f25b716e8604f883de1953a5c5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/dbus-libs-1.12.8-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/31cb3418fc47087230b4b6bbba65a81e34e690f25b716e8604f883de1953a5c5",
    ],
)

rpm(
    name = "dbus-libs-1__1.12.8-25.el8.x86_64",
    sha256 = "ea0891ab7a4c74c4837764b4a48bf87cc7cb3fddc7d678d4718c6465e4f17e91",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-libs-1.12.8-25.el8.x86_64.rpm"],
)

rpm(
    name = "dbus-tools-1__1.12.8-23.el8.aarch64",
    sha256 = "a5697ac626a89e0623fc131db9b0ae07d885d410f29fce2443df1df5ce9be8ef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/dbus-tools-1.12.8-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a5697ac626a89e0623fc131db9b0ae07d885d410f29fce2443df1df5ce9be8ef",
    ],
)

rpm(
    name = "dbus-tools-1__1.12.8-25.el8.x86_64",
    sha256 = "a57a308a9e167b8174731e87e97ada8d1e1b9cc609de08e3150beda2b5267af7",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/dbus-tools-1.12.8-25.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-8__1.02.181-6.el8.aarch64",
    sha256 = "05ca821f4cef038bb994d59b1bbd7feebcba7ed6089aab0debf79ba759768a47",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/device-mapper-1.02.181-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/05ca821f4cef038bb994d59b1bbd7feebcba7ed6089aab0debf79ba759768a47",
    ],
)

rpm(
    name = "device-mapper-8__1.02.181-9.el8.x86_64",
    sha256 = "28f2e3e2a0888e59d23525473d21e3486aabdbbd27b86d40c57b22bbd5a3a323",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-1.02.181-9.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-event-8__1.02.181-9.el8.x86_64",
    sha256 = "ebd0610b792ef94ad1740e00b1c5c7678fde6e7cd61d035b1bfc8ed05ae5a6ea",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-event-1.02.181-9.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-event-libs-8__1.02.181-9.el8.x86_64",
    sha256 = "fd740286527b20fa3647645882e531904de9665f59adaa815691e32095f491f2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-event-libs-1.02.181-9.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-libs-8__1.02.181-6.el8.aarch64",
    sha256 = "53d03a64bcbb33297eaa744b61d3bfddf001c0bcfdf263729236f3fec85a1b3c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/device-mapper-libs-1.02.181-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/53d03a64bcbb33297eaa744b61d3bfddf001c0bcfdf263729236f3fec85a1b3c",
    ],
)

rpm(
    name = "device-mapper-libs-8__1.02.181-9.el8.x86_64",
    sha256 = "8fd6ecaa19fc86b236fb00d1a816eca2ab84e6531ca6fe318bfc1297caee8e88",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-libs-1.02.181-9.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-multipath-libs-0__0.8.4-28.el8.aarch64",
    sha256 = "92aafe5d2c90d6b265284e30a7df557a103ebdd6b56106450830382979569fd1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/device-mapper-multipath-libs-0.8.4-28.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/92aafe5d2c90d6b265284e30a7df557a103ebdd6b56106450830382979569fd1",
    ],
)

rpm(
    name = "device-mapper-multipath-libs-0__0.8.4-39.el8.x86_64",
    sha256 = "0d75454b53ebbb3e848f0f07bd9a1ceadd4f6897aeea277a7fc3d3d927b2b3e8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-multipath-libs-0.8.4-39.el8.x86_64.rpm"],
)

rpm(
    name = "device-mapper-persistent-data-0__0.9.0-7.el8.x86_64",
    sha256 = "609c2bf12ce2994a0753177e334cde294a96750903c24d8583e7a0674c80485e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/device-mapper-persistent-data-0.9.0-7.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/609c2bf12ce2994a0753177e334cde294a96750903c24d8583e7a0674c80485e",
    ],
)

rpm(
    name = "diffutils-0__3.6-6.el8.aarch64",
    sha256 = "8cbebc0fa970ceca4f479ee292eaad155084987be2cf7f97bbafe4a529319c98",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/diffutils-3.6-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8cbebc0fa970ceca4f479ee292eaad155084987be2cf7f97bbafe4a529319c98",
    ],
)

rpm(
    name = "diffutils-0__3.6-6.el8.x86_64",
    sha256 = "c515d78c64a93d8b469593bff5800eccd50f24b16697ab13bdce81238c38eb77",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/diffutils-3.6-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/c515d78c64a93d8b469593bff5800eccd50f24b16697ab13bdce81238c38eb77",
    ],
)

rpm(
    name = "dmidecode-1__3.3-4.el8.x86_64",
    sha256 = "c1347fe2d5621a249ea230e9e8ff2774e538031070a225245154a75428ec67a5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/dmidecode-3.3-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/c1347fe2d5621a249ea230e9e8ff2774e538031070a225245154a75428ec67a5",
    ],
)

rpm(
    name = "e2fsprogs-0__1.45.6-5.el8.aarch64",
    sha256 = "b916de2e7ea8fc3b0b381e0afe4353ab401b82885cea5afec0551232beb30fe2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/e2fsprogs-1.45.6-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b916de2e7ea8fc3b0b381e0afe4353ab401b82885cea5afec0551232beb30fe2",
    ],
)

rpm(
    name = "e2fsprogs-0__1.45.6-5.el8.x86_64",
    sha256 = "baa1ec089da85bf196f6e1e135727bb540f27ee7fe39d08bb17b712e59f4db8a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/e2fsprogs-1.45.6-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/baa1ec089da85bf196f6e1e135727bb540f27ee7fe39d08bb17b712e59f4db8a",
    ],
)

rpm(
    name = "e2fsprogs-libs-0__1.45.6-5.el8.aarch64",
    sha256 = "0ec196d820abc43432cfa52c887c880b27b63619c6785dc30daed0e091c5bb76",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/e2fsprogs-libs-1.45.6-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0ec196d820abc43432cfa52c887c880b27b63619c6785dc30daed0e091c5bb76",
    ],
)

rpm(
    name = "e2fsprogs-libs-0__1.45.6-5.el8.x86_64",
    sha256 = "035c5ed68339e632907c3f952098cdc9181ab9138239473903000e6a50446d98",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/e2fsprogs-libs-1.45.6-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/035c5ed68339e632907c3f952098cdc9181ab9138239473903000e6a50446d98",
    ],
)

rpm(
    name = "edk2-aarch64-0__20220126gitbb1bba3d77-2.el8.aarch64",
    sha256 = "0985ef697fbe90b66dbb0f70bfb4d0022f97255a36479e8d9ae4dd0489afd01a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/edk2-aarch64-20220126gitbb1bba3d77-2.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/0985ef697fbe90b66dbb0f70bfb4d0022f97255a36479e8d9ae4dd0489afd01a",
    ],
)

rpm(
    name = "edk2-ovmf-0__20220126gitbb1bba3d77-5.el8.x86_64",
    sha256 = "974ee4e4d9007e9508eb046d6d58ef800c22aceaf167eadd9b3d505251e7c94f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/edk2-ovmf-20220126gitbb1bba3d77-5.el8.noarch.rpm"],
)

rpm(
    name = "elfutils-default-yama-scope-0__0.187-4.el8.aarch64",
    sha256 = "3c89377bb7409293f0dc8ada62071fe2e3cf042ae2b5ca7cf09faf77394b5187",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/elfutils-default-yama-scope-0.187-4.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3c89377bb7409293f0dc8ada62071fe2e3cf042ae2b5ca7cf09faf77394b5187",
    ],
)

rpm(
    name = "elfutils-default-yama-scope-0__0.189-2.el8.x86_64",
    sha256 = "8a9ce60ea520da65631de954a319be6b5b84b2391b848ba3d65a33af6bb4dd13",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-default-yama-scope-0.189-2.el8.noarch.rpm"],
)

rpm(
    name = "elfutils-libelf-0__0.187-4.el8.aarch64",
    sha256 = "bfdfc37f2dd1052d4067937724a6ef6a9858a9c1b3c1aacf1e9085a83e99e1b4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/elfutils-libelf-0.187-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/bfdfc37f2dd1052d4067937724a6ef6a9858a9c1b3c1aacf1e9085a83e99e1b4",
    ],
)

rpm(
    name = "elfutils-libelf-0__0.189-2.el8.x86_64",
    sha256 = "5c795eba64e1059834fc07177e92287ae92b05b6228ec5fe43c663f56da89934",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-libelf-0.189-2.el8.x86_64.rpm"],
)

rpm(
    name = "elfutils-libs-0__0.187-4.el8.aarch64",
    sha256 = "682c1b9f11d68cdec87ea746ea0d5861f3afcf2159aa732854625bfa180bbaee",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/elfutils-libs-0.187-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/682c1b9f11d68cdec87ea746ea0d5861f3afcf2159aa732854625bfa180bbaee",
    ],
)

rpm(
    name = "elfutils-libs-0__0.189-2.el8.x86_64",
    sha256 = "79bedf7bea9977cb01d4a0f71b403539c63d40de0354605c35a8db94771e3e7c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/elfutils-libs-0.189-2.el8.x86_64.rpm"],
)

rpm(
    name = "ethtool-2__5.13-2.el8.aarch64",
    sha256 = "5bdb69b9c4161ba3d4846082686ee8edce640b7c6ff0bbf1c1eae12084661c24",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/ethtool-5.13-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5bdb69b9c4161ba3d4846082686ee8edce640b7c6ff0bbf1c1eae12084661c24",
    ],
)

rpm(
    name = "ethtool-2__5.13-2.el8.x86_64",
    sha256 = "f1af67b33961ddf98360e5ce855910d2dee534bffe953068f27ad96b846a2fb7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ethtool-5.13-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f1af67b33961ddf98360e5ce855910d2dee534bffe953068f27ad96b846a2fb7",
    ],
)

rpm(
    name = "expat-0__2.2.5-11.el8.x86_64",
    sha256 = "5deba05aa6366108abb5cc764584eec5594f77c052ef02927f0ce0b3b5cc4065",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/expat-2.2.5-11.el8.x86_64.rpm"],
)

rpm(
    name = "expat-0__2.2.5-9.el8.aarch64",
    sha256 = "4ca97fb015687a8f2ac442f581d1c42154662b4336e0f34c71be2659cb716fc8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/expat-2.2.5-9.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4ca97fb015687a8f2ac442f581d1c42154662b4336e0f34c71be2659cb716fc8",
    ],
)

rpm(
    name = "file-0__5.33-25.el8.x86_64",
    sha256 = "7fe081ff55ce29a90d6c047c4640713426b6e128a888907040b8676a73ff2720",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/file-5.33-25.el8.x86_64.rpm"],
)

rpm(
    name = "file-libs-0__5.33-25.el8.x86_64",
    sha256 = "5a1b7f1f4b7d37e4a7ca21940fd5271ab82669aaef68d829260b8ffd3772e3c8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/file-libs-5.33-25.el8.x86_64.rpm"],
)

rpm(
    name = "filesystem-0__3.8-6.el8.aarch64",
    sha256 = "e6c3fa94860eda0bc2ae6b1b78acd1159cbed355a03e7bec8b3defa1d90782b6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/filesystem-3.8-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/e6c3fa94860eda0bc2ae6b1b78acd1159cbed355a03e7bec8b3defa1d90782b6",
    ],
)

rpm(
    name = "filesystem-0__3.8-6.el8.x86_64",
    sha256 = "50bdb81d578914e0e88fe6b13550b4c30aac4d72f064fdcd78523df7dd2f64da",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/filesystem-3.8-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/50bdb81d578914e0e88fe6b13550b4c30aac4d72f064fdcd78523df7dd2f64da",
    ],
)

rpm(
    name = "findutils-1__4.6.0-20.el8.aarch64",
    sha256 = "985479064966d05aa82010ed5b8905942e47e2bebb919c9c1bd004a28addad1d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/findutils-4.6.0-20.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/985479064966d05aa82010ed5b8905942e47e2bebb919c9c1bd004a28addad1d",
    ],
)

rpm(
    name = "findutils-1__4.6.0-20.el8.x86_64",
    sha256 = "811eb112646b7d87773c65af47efdca975468f3e5df44aa9944e30de24d83890",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/findutils-4.6.0-20.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/811eb112646b7d87773c65af47efdca975468f3e5df44aa9944e30de24d83890",
    ],
)

rpm(
    name = "flac-libs-0__1.3.2-9.el8.x86_64",
    sha256 = "21537df31efbfd5061c85c64ebc0a5ecb0711600abc72e47bc99e5943aaaaec8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/flac-libs-1.3.2-9.el8.x86_64.rpm"],
)

rpm(
    name = "fontconfig-0__2.13.1-4.el8.x86_64",
    sha256 = "1d2c61493d72419e85272e8cbc1a0bf3232c81b9bed4707d68f2bbeef2391a55",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/fontconfig-2.13.1-4.el8.x86_64.rpm"],
)

rpm(
    name = "fontpackages-filesystem-0__1.44-22.el8.x86_64",
    sha256 = "700b9050aa490b5eca6d1f8630cbebceb122fce11c370689b5ccb37f5a43ee2f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/fontpackages-filesystem-1.44-22.el8.noarch.rpm"],
)

rpm(
    name = "freetype-0__2.9.1-9.el8.x86_64",
    sha256 = "0097dc947c987310bb5cbcb9976594eac1e1d111e065ffee150abc2d69b8d709",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/freetype-2.9.1-9.el8.x86_64.rpm"],
)

rpm(
    name = "fribidi-0__1.0.4-9.el8.x86_64",
    sha256 = "6540f56f1d5f191d91e8445d7156bf7fae954c18f07c7191bd0cb0ef38455e05",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/fribidi-1.0.4-9.el8.x86_64.rpm"],
)

rpm(
    name = "fuse-0__2.9.7-17.el8.x86_64",
    sha256 = "6c63920ea9a81b4245f1e97fa91f2d5d7ef6705791a752f568b2304648147426",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/fuse-2.9.7-17.el8.x86_64.rpm"],
)

rpm(
    name = "fuse-common-0__3.3.0-17.el8.x86_64",
    sha256 = "3931218993b9ded5c897dd9417477c697c8744aac815056239d78451cf6a6028",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/fuse-common-3.3.0-17.el8.x86_64.rpm"],
)

rpm(
    name = "fuse-libs-0__2.9.7-16.el8.aarch64",
    sha256 = "6970abceb1e040a2a37a13faeaf2a4204c79a57d5bc8273ed276b385be813afb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/fuse-libs-2.9.7-16.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/6970abceb1e040a2a37a13faeaf2a4204c79a57d5bc8273ed276b385be813afb",
    ],
)

rpm(
    name = "fuse-libs-0__2.9.7-17.el8.x86_64",
    sha256 = "e5ae322de62f16a8e122dc07ee21d0c8009e2622acca75de8dddd155659b39da",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/fuse-libs-2.9.7-17.el8.x86_64.rpm"],
)

rpm(
    name = "gawk-0__4.2.1-4.el8.aarch64",
    sha256 = "75594a09076ad901d5afb1027c74aae945f77e0e357e7d4f46148cbcbd1d0ae4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gawk-4.2.1-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/75594a09076ad901d5afb1027c74aae945f77e0e357e7d4f46148cbcbd1d0ae4",
    ],
)

rpm(
    name = "gawk-0__4.2.1-4.el8.x86_64",
    sha256 = "ff4438c2dff5bf933d7874fd55f131ca6ee067f8fb4324c89719d63e60b40aba",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gawk-4.2.1-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/ff4438c2dff5bf933d7874fd55f131ca6ee067f8fb4324c89719d63e60b40aba",
    ],
)

rpm(
    name = "gcc-0__8.5.0-15.el8.aarch64",
    sha256 = "347dbe82b51689eda62164b0ffdabb2dadf26f170c7430c32936d3ee87a67693",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/gcc-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/347dbe82b51689eda62164b0ffdabb2dadf26f170c7430c32936d3ee87a67693",
    ],
)

rpm(
    name = "gcc-0__8.5.0-20.el8.x86_64",
    sha256 = "7bb4f0204ac60c752fbd2c9596e152a70874da8ce297fd7206b4c614c0e85d35",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/gcc-8.5.0-20.el8.x86_64.rpm"],
)

rpm(
    name = "gdbm-1__1.18-2.el8.aarch64",
    sha256 = "c032e3863180bb2247ddc0e02cd54be72099137af21452e2dc25ddd03f9a5395",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gdbm-1.18-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c032e3863180bb2247ddc0e02cd54be72099137af21452e2dc25ddd03f9a5395",
    ],
)

rpm(
    name = "gdbm-1__1.18-2.el8.x86_64",
    sha256 = "fa1751b26519b9637cf3f0a25ea1874eb2df005dde1e1371a3f13d0c9a38b9ca",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gdbm-1.18-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/fa1751b26519b9637cf3f0a25ea1874eb2df005dde1e1371a3f13d0c9a38b9ca",
    ],
)

rpm(
    name = "gdbm-libs-1__1.18-2.el8.aarch64",
    sha256 = "bdb64aec2a4ea8a2c70652cd57e5f88353079042402e7662e0e89934d3737562",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gdbm-libs-1.18-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/bdb64aec2a4ea8a2c70652cd57e5f88353079042402e7662e0e89934d3737562",
    ],
)

rpm(
    name = "gdbm-libs-1__1.18-2.el8.x86_64",
    sha256 = "eddcea96342c8cfaa60b79fc2c66cb8c5b0038c3b11855abe55e659b2cad6199",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gdbm-libs-1.18-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/eddcea96342c8cfaa60b79fc2c66cb8c5b0038c3b11855abe55e659b2cad6199",
    ],
)

rpm(
    name = "gettext-0__0.19.8.1-17.el8.aarch64",
    sha256 = "5f0c37488d3017b052039ddb8d9189a38c252af97884264959334237109c7e7c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gettext-0.19.8.1-17.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5f0c37488d3017b052039ddb8d9189a38c252af97884264959334237109c7e7c",
    ],
)

rpm(
    name = "gettext-0__0.19.8.1-17.el8.x86_64",
    sha256 = "829c842bbd79dca18d37198414626894c44e5b8faf0cce0054ca0ba6623ae136",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gettext-0.19.8.1-17.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/829c842bbd79dca18d37198414626894c44e5b8faf0cce0054ca0ba6623ae136",
    ],
)

rpm(
    name = "gettext-libs-0__0.19.8.1-17.el8.aarch64",
    sha256 = "882f23e0250a2d4aea49abb4ec8e11a9a3869ccdd812c796b6f85341ff9d30a2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gettext-libs-0.19.8.1-17.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/882f23e0250a2d4aea49abb4ec8e11a9a3869ccdd812c796b6f85341ff9d30a2",
    ],
)

rpm(
    name = "gettext-libs-0__0.19.8.1-17.el8.x86_64",
    sha256 = "ade52756aaf236e77dadd6cf97716821141c2759129ca7808524ab79607bb4c4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gettext-libs-0.19.8.1-17.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/ade52756aaf236e77dadd6cf97716821141c2759129ca7808524ab79607bb4c4",
    ],
)

rpm(
    name = "glib2-0__2.56.4-159.el8.aarch64",
    sha256 = "daac37a432b09faa6dd1e330c3595f6a70c53bff23a71fbce8df33c72e9fde24",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glib2-2.56.4-159.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/daac37a432b09faa6dd1e330c3595f6a70c53bff23a71fbce8df33c72e9fde24",
    ],
)

rpm(
    name = "glib2-0__2.56.4-161.el8.x86_64",
    sha256 = "d719ce836f972f57e577f315267f6b5177cc8f8cc9687a8432f1e22cf575bb81",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glib2-2.56.4-161.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-0__2.28-211.el8.aarch64",
    sha256 = "7adf1cf7941e41077fdb294568638fe4ccefe685f7e767be7a82768709af0916",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glibc-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7adf1cf7941e41077fdb294568638fe4ccefe685f7e767be7a82768709af0916",
    ],
)

rpm(
    name = "glibc-0__2.28-228.el8.x86_64",
    sha256 = "7915ec33decb5c9cc7e9d9afaba190f489599d26c40a699a04f62a9cb1ecb8e4",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-common-0__2.28-211.el8.aarch64",
    sha256 = "2b5dec4d1cd079511561525828d5ce782269fd5b6e5bd3d2f630b2dd9dd5386c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glibc-common-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2b5dec4d1cd079511561525828d5ce782269fd5b6e5bd3d2f630b2dd9dd5386c",
    ],
)

rpm(
    name = "glibc-common-0__2.28-228.el8.x86_64",
    sha256 = "5f44ec37c23e1a52ca7ab1bc2e2e13647b6c55300b653d47653400156d7407d8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-common-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-devel-0__2.28-211.el8.aarch64",
    sha256 = "76f98c8a73275625506863434abb0630e988ec67d74c29c9327e6ab9c69fd367",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glibc-devel-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/76f98c8a73275625506863434abb0630e988ec67d74c29c9327e6ab9c69fd367",
    ],
)

rpm(
    name = "glibc-devel-0__2.28-228.el8.x86_64",
    sha256 = "6c4707f0cbc60a10319306fc87955715e369945204372f5b0509a1c9c67afcb3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-devel-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-headers-0__2.28-211.el8.aarch64",
    sha256 = "b1316336d7cce30779121338562d21e4514f720bd17686e8f5cb2177895d9fdb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glibc-headers-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b1316336d7cce30779121338562d21e4514f720bd17686e8f5cb2177895d9fdb",
    ],
)

rpm(
    name = "glibc-headers-0__2.28-228.el8.x86_64",
    sha256 = "eafa6063563678be6d0e0fe6f1ba1801bafe42f90247ef74315471f917df0962",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-headers-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-minimal-langpack-0__2.28-211.el8.aarch64",
    sha256 = "3607d6a967633522a885ee242911f21d59a1773c05ee06aa850151b5b923e197",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/glibc-minimal-langpack-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3607d6a967633522a885ee242911f21d59a1773c05ee06aa850151b5b923e197",
    ],
)

rpm(
    name = "glibc-minimal-langpack-0__2.28-228.el8.x86_64",
    sha256 = "e66b1675b22a9ec769331a6698978abfde51f5936dd3ca42ac263accdbf63752",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/glibc-minimal-langpack-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "glibc-static-0__2.28-211.el8.aarch64",
    sha256 = "03d8ff6274c07605abfc765e9205bd9f2ea141e10e805828c128f0834fec3282",
    urls = [
        "http://mirror.centos.org/centos/8-stream/PowerTools/aarch64/os/Packages/glibc-static-2.28-211.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/03d8ff6274c07605abfc765e9205bd9f2ea141e10e805828c128f0834fec3282",
    ],
)

rpm(
    name = "glibc-static-0__2.28-228.el8.x86_64",
    sha256 = "52d0ecb4d73f31de1b1fd05654a3384ed9b810a48c3411ac33c74207c25fa663",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/PowerTools/x86_64/os/Packages/glibc-static-2.28-228.el8.x86_64.rpm"],
)

rpm(
    name = "gmp-1__6.1.2-10.el8.aarch64",
    sha256 = "8d407f8ad961169fca2ee5e22e824cbc2d2b5fedca9701896cc492d4cb788603",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gmp-6.1.2-10.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8d407f8ad961169fca2ee5e22e824cbc2d2b5fedca9701896cc492d4cb788603",
    ],
)

rpm(
    name = "gmp-1__6.1.2-10.el8.x86_64",
    sha256 = "3b96e2c7d5cd4b49bfde8e52c8af6ff595c91438e50856e468f14a049d8511e2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gmp-6.1.2-10.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/3b96e2c7d5cd4b49bfde8e52c8af6ff595c91438e50856e468f14a049d8511e2",
    ],
)

rpm(
    name = "gnupg2-0__2.2.20-3.el8.x86_64",
    sha256 = "8c44c980dd9a6a42ccb93578d7e6e1940d36d2da0a5a99d783189c43b2ad6d5f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gnupg2-2.2.20-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/8c44c980dd9a6a42ccb93578d7e6e1940d36d2da0a5a99d783189c43b2ad6d5f",
    ],
)

rpm(
    name = "gnutls-0__3.6.16-5.el8.aarch64",
    sha256 = "6116c9afcae8723b1c985df5be06a2ce729eff8231800bd61d03758f9b249463",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gnutls-3.6.16-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/6116c9afcae8723b1c985df5be06a2ce729eff8231800bd61d03758f9b249463",
    ],
)

rpm(
    name = "gnutls-0__3.6.16-7.el8.x86_64",
    sha256 = "9c77a735837d91d30c3b419c94812fdf55797c0d4068d75adae5f638010f82f6",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/gnutls-3.6.16-7.el8.x86_64.rpm"],
)

rpm(
    name = "gnutls-dane-0__3.6.16-5.el8.aarch64",
    sha256 = "a768b99f8d974c192e1429a6822da3c79e866edd9d56c39cd787235cf6b110de",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/gnutls-dane-3.6.16-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a768b99f8d974c192e1429a6822da3c79e866edd9d56c39cd787235cf6b110de",
    ],
)

rpm(
    name = "gnutls-dane-0__3.6.16-7.el8.x86_64",
    sha256 = "b3d4fe1e49cf1113814effc9b9705bb23dd6c6c56688ddb0cb5c8d23b10fdd11",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/gnutls-dane-3.6.16-7.el8.x86_64.rpm"],
)

rpm(
    name = "gnutls-utils-0__3.6.16-5.el8.aarch64",
    sha256 = "b925f5665d796db4f9a18e8df9dd911035fd49705b3a0b75b274bd8e83b4a2b0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/gnutls-utils-3.6.16-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b925f5665d796db4f9a18e8df9dd911035fd49705b3a0b75b274bd8e83b4a2b0",
    ],
)

rpm(
    name = "gnutls-utils-0__3.6.16-7.el8.x86_64",
    sha256 = "ffeb2154859d5e1db63150b1577644b18372a6d3a6ccf49932f7f4bb6de17ad8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/gnutls-utils-3.6.16-7.el8.x86_64.rpm"],
)

rpm(
    name = "graphite2-0__1.3.10-10.el8.x86_64",
    sha256 = "0f9c3ee5f54ed296f99219bd70fa4f869c4c9986e3766d813a76a0cc5ecee24e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/graphite2-1.3.10-10.el8.x86_64.rpm"],
)

rpm(
    name = "grep-0__3.1-6.el8.aarch64",
    sha256 = "7ffd6e95b0554466e97346b2f41fb5279aedcb29ae07828f63d06a8dedd7cd51",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/grep-3.1-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7ffd6e95b0554466e97346b2f41fb5279aedcb29ae07828f63d06a8dedd7cd51",
    ],
)

rpm(
    name = "grep-0__3.1-6.el8.x86_64",
    sha256 = "3f8ffe48bb481a5db7cbe42bf73b839d872351811e5df41b2f6697c61a030487",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/grep-3.1-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/3f8ffe48bb481a5db7cbe42bf73b839d872351811e5df41b2f6697c61a030487",
    ],
)

rpm(
    name = "groff-base-0__1.22.3-18.el8.x86_64",
    sha256 = "b00855013100d3796e9ed6d82b1ab2d4dc7f4a3a3fa2e186f6de8523577974a0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/groff-base-1.22.3-18.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/b00855013100d3796e9ed6d82b1ab2d4dc7f4a3a3fa2e186f6de8523577974a0",
    ],
)

rpm(
    name = "gsm-0__1.0.17-5.el8.x86_64",
    sha256 = "46176d2f6ca0a6b48719c1b2fc8c26c23687f854e03d6cd377ae7758d3f71245",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/gsm-1.0.17-5.el8.x86_64.rpm"],
)

rpm(
    name = "gstreamer1-0__1.16.1-2.el8.x86_64",
    sha256 = "f15ce668cd55f1d5df62902d98ade38a057e3c782549dca3c45ce038b9ae2968",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/gstreamer1-1.16.1-2.el8.x86_64.rpm"],
)

rpm(
    name = "gstreamer1-plugins-base-0__1.16.1-2.el8.x86_64",
    sha256 = "755c97a2a0b3460f51c5e70b18ca207eb3b68c1647d6949666f0dfd739dce319",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/gstreamer1-plugins-base-1.16.1-2.el8.x86_64.rpm"],
)

rpm(
    name = "gzip-0__1.9-13.el8.aarch64",
    sha256 = "80ee79fb497c43c06d3c54bf432e6391c5ae19ae43241111f3be4113ea49fa96",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/gzip-1.9-13.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/80ee79fb497c43c06d3c54bf432e6391c5ae19ae43241111f3be4113ea49fa96",
    ],
)

rpm(
    name = "gzip-0__1.9-13.el8.x86_64",
    sha256 = "1cc189e4991fc6b3526f7eebc9f798b8922e70d60a12ba499b6e0329eb473cea",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/gzip-1.9-13.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/1cc189e4991fc6b3526f7eebc9f798b8922e70d60a12ba499b6e0329eb473cea",
    ],
)

rpm(
    name = "harfbuzz-0__1.7.5-3.el8.x86_64",
    sha256 = "49c652f3d967e944b9d0ad9dea63e8942626d3b9f40fde12cfb0d3e924a82053",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/harfbuzz-1.7.5-3.el8.x86_64.rpm"],
)

rpm(
    name = "hexedit-0__1.2.13-12.el8.x86_64",
    sha256 = "4538e44d3ebff3f9323b59171767bca2b7f5244dd90141de101856ad4f4643f5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/hexedit-1.2.13-12.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4538e44d3ebff3f9323b59171767bca2b7f5244dd90141de101856ad4f4643f5",
    ],
)

rpm(
    name = "hivex-0__1.3.18-23.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "0d4c9b1a50e6a36750171c385ad8cf433103d9e4b03989147c23065d7b43698f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/hivex-1.3.18-23.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "hwdata-0__0.314-8.18.el8.x86_64",
    sha256 = "8606ca867f1a97f823d5cdbb24e808c14c95e63cfffbdc0159bce1ef33c2ce4f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/hwdata-0.314-8.18.el8.noarch.rpm"],
)

rpm(
    name = "info-0__6.5-7.el8_5.aarch64",
    sha256 = "24a7e6f02ac095d965832203d0c8a9ee13aea301ef8572bb1ecdace435c796be",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/info-6.5-7.el8_5.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/24a7e6f02ac095d965832203d0c8a9ee13aea301ef8572bb1ecdace435c796be",
    ],
)

rpm(
    name = "info-0__6.5-7.el8_5.x86_64",
    sha256 = "63f03261cc8109b2fb61002ca50c93e52acb9cfd8382d139e8de6623394051e8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/info-6.5-7.el8_5.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/63f03261cc8109b2fb61002ca50c93e52acb9cfd8382d139e8de6623394051e8",
    ],
)

rpm(
    name = "intel-mvp-ovmf-0__mvp8-stable202302.x86_64",
    sha256 = "db380f140c0d2d0979039f52cab6cb8f0ef6e2e5e96b1595a4e5b9eef7081d19",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/noarch/intel-mvp-ovmf-mvp8-stable202302.noarch.rpm"],
)

rpm(
    name = "intel-mvp-tdx-libvirt-client-0__8.6.0-2022.11.17.mvp2.el8.x86_64",
    sha256 = "98655248e34117a5ab5c27cc2c05b2e8c12205636e1ab5fa2bf60506e40adc12",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-libvirt-client-8.6.0-2022.11.17.mvp2.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-libvirt-daemon-0__8.6.0-2022.11.17.mvp2.el8.x86_64",
    sha256 = "079d1e2c21f79ac75f896c9ad6ea74b761b71bff843153a0f0fa4ff77b3f7b57",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-libvirt-daemon-8.6.0-2022.11.17.mvp2.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-libvirt-daemon-driver-qemu-0__8.6.0-2022.11.17.mvp2.el8.x86_64",
    sha256 = "45c179b99b85a0faa437bafc2fe645530a71176e1afff2276f41583a8f78884e",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-libvirt-daemon-driver-qemu-8.6.0-2022.11.17.mvp2.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-libvirt-devel-0__8.6.0-2022.11.17.mvp2.el8.x86_64",
    sha256 = "52f4619c6b76630ea01a78a8dd6c472ce6e1dd7a0915952471513ea1b8df9627",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-libvirt-devel-8.6.0-2022.11.17.mvp2.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-libvirt-libs-0__8.6.0-2022.11.17.mvp2.el8.x86_64",
    sha256 = "957cd305ecbc3a58fa306a79fa0144d34157597fea696bd0dc84ce8f861bdd58",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-libvirt-libs-8.6.0-2022.11.17.mvp2.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-img-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "a8e9a42edd67e540f6b902ae569a18b46fba35483c7d6a461be111a0ca61950a",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-img-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "0a65258db0ac6ce51929ce361b4a2ebcf052d0d0d519db30a6aa0f2f6621df99",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-audio-pa-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "fc6d186fc7c6b5041e0c9f8f9440a776251058702a6eff40797b565d17d15817",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-audio-pa-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-block-rbd-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "25c29f7210d9927d2f4ea4facf2c54488e1998d33860471ed7c84ad7c8abe1bc",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-block-rbd-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-common-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "5aa18c8d86331583b62f32bfc65c2def590444832b992a11af91019556583769",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-common-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-core-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "a69cc2639161a8a6ac944716cab709f9dda30d45e658c7221fbf30454ef3b9c8",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-core-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-docs-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "fb3860c57f6240d6494f1dbc36156ac3b908ed20d999ac0598bcd20d17d04b6e",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-docs-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-hw-usbredir-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "42d2cc54b67429bc85e8ee583596e4e0fdbaa53e3640fbe1be28e5b6c47dc56f",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-hw-usbredir-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-tools-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "79584f45877d5bad5bd5d8870076d01e82e7328eed88a625bc580bb3fd1129b8",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-tools-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-ui-opengl-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "f338f09decfe060dea2af9b125084cd2663c09ad030e094598b2156b4249f3d6",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-ui-opengl-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-kvm-ui-spice-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "d86197e7f0e69594381ad389f794382cc0e17b03fc895e75cec9c9b5f5381d71",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-kvm-ui-spice-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-pr-helper-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "c9a8dd74b37be1e91392e761ab9803f36969409a47242fe2bf53af54cdd0b575",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-pr-helper-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "intel-mvp-tdx-qemu-virtiofsd-17__7.0.50-v1.5.mvp9.el8.x86_64",
    sha256 = "7135b9b2adb607ff8f51d156f17e2724f221b88f87bdcd57f9cad8236713b998",
    urls = ["http://css-devops.sh.intel.com/download/mvp-stacks/1.0/2023ww22/mvp-tdx-stack-host-rhel-8/x86_64/intel-mvp-tdx-qemu-virtiofsd-7.0.50-v1.5.mvp9.el8.x86_64.rpm"],
)

rpm(
    name = "iproute-0__5.18.0-1.el8.aarch64",
    sha256 = "7ec84f47ebaed2388e48e27d9566a43609c7c384bbfbc3f0497c6bc314f618a5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/iproute-5.18.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7ec84f47ebaed2388e48e27d9566a43609c7c384bbfbc3f0497c6bc314f618a5",
    ],
)

rpm(
    name = "iproute-0__6.2.0-2.el8.x86_64",
    sha256 = "a107cc55374976d18f1d2e6b754155190f446ae480a2cd9bb1475d3f6fb9fcf0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/iproute-6.2.0-2.el8.x86_64.rpm"],
)

rpm(
    name = "iproute-tc-0__5.18.0-1.el8.aarch64",
    sha256 = "8696d818b8ead9df0a2d66cf8e1fe03affd19899dd86e451267603faade5a161",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/iproute-tc-5.18.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8696d818b8ead9df0a2d66cf8e1fe03affd19899dd86e451267603faade5a161",
    ],
)

rpm(
    name = "iproute-tc-0__6.2.0-2.el8.x86_64",
    sha256 = "18221e1329b47bb2ed4b5c58b6af88a103cf5e1d6cda797dfcb911df7c4f3c37",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/iproute-tc-6.2.0-2.el8.x86_64.rpm"],
)

rpm(
    name = "iptables-0__1.8.4-23.el8.aarch64",
    sha256 = "09f12f3637e229c11481e965306dc056664904663a28983e2a06f6a987ccde96",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/iptables-1.8.4-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/09f12f3637e229c11481e965306dc056664904663a28983e2a06f6a987ccde96",
    ],
)

rpm(
    name = "iptables-0__1.8.4-24.el8.x86_64",
    sha256 = "e4d26dec2832a8177e76d0d287a70dfaa57499ebf954610c215e449b9190492e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/iptables-1.8.4-24.el8.x86_64.rpm"],
)

rpm(
    name = "iptables-libs-0__1.8.4-23.el8.aarch64",
    sha256 = "f16feb8722435e81f025ba4a05d8e3b970cb0adbc1d1da6ba399d7f3a6d5b6f8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/iptables-libs-1.8.4-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/f16feb8722435e81f025ba4a05d8e3b970cb0adbc1d1da6ba399d7f3a6d5b6f8",
    ],
)

rpm(
    name = "iptables-libs-0__1.8.4-24.el8.x86_64",
    sha256 = "cf70e436e2fe912f419579500fd30512be5420009d63a82aacc47767b32901d5",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/iptables-libs-1.8.4-24.el8.x86_64.rpm"],
)

rpm(
    name = "iputils-0__20180629-10.el8.aarch64",
    sha256 = "7a40254a162ab0117a106ed2a08b824a2f2186b14e56257a5e848ae070cee0f1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/iputils-20180629-10.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7a40254a162ab0117a106ed2a08b824a2f2186b14e56257a5e848ae070cee0f1",
    ],
)

rpm(
    name = "iputils-0__20180629-10.el8.x86_64",
    sha256 = "66358ff76f9f26f6dbc403e479ab9389326d56233c5114daef316f589990c941",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/iputils-20180629-10.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/66358ff76f9f26f6dbc403e479ab9389326d56233c5114daef316f589990c941",
    ],
)

rpm(
    name = "ipxe-roms-qemu-0__20181214-11.git133f4c47.el8.x86_64",
    sha256 = "14640176ccf8c67c986132466915d3fa2c049076e7a2633b5d8e79cbb5e03a24",
    urls = ["http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/ipxe-roms-qemu-20181214-11.git133f4c47.el8.noarch.rpm"],
)

rpm(
    name = "isl-0__0.16.1-6.el8.aarch64",
    sha256 = "b9bd73b0edcd9573548853bd44f5a58919d9de77d8b1304a4176c7fad726b472",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/isl-0.16.1-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b9bd73b0edcd9573548853bd44f5a58919d9de77d8b1304a4176c7fad726b472",
    ],
)

rpm(
    name = "isl-0__0.16.1-6.el8.x86_64",
    sha256 = "0cbdbdf53c8c12f48493bdae47d2bda45425011e67801a5827d164d6e10759ae",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/isl-0.16.1-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/0cbdbdf53c8c12f48493bdae47d2bda45425011e67801a5827d164d6e10759ae",
    ],
)

rpm(
    name = "iso-codes-0__3.79-2.el8.x86_64",
    sha256 = "f5a0a39b40f2af0b74ec47f6a5e00f7772ac8bd347c793b7deac84d3d8d7d47a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/iso-codes-3.79-2.el8.noarch.rpm"],
)

rpm(
    name = "jansson-0__2.14-1.el8.aarch64",
    sha256 = "69b4dd56ca16ed4ac5840e0d39a29d2e0b050905a349e1aceae4ec511a11b792",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/jansson-2.14-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/69b4dd56ca16ed4ac5840e0d39a29d2e0b050905a349e1aceae4ec511a11b792",
    ],
)

rpm(
    name = "jansson-0__2.14-1.el8.x86_64",
    sha256 = "f825b85b4506a740fb2f85b9a577c51264f3cfe792dd8b2bf8963059cc77c3c4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/jansson-2.14-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f825b85b4506a740fb2f85b9a577c51264f3cfe792dd8b2bf8963059cc77c3c4",
    ],
)

rpm(
    name = "json-c-0__0.13.1-3.el8.aarch64",
    sha256 = "3bb6aa6c7aa0c3186c3dbce23661ec709c43c0e87a22a7e952148f515e2bfc82",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/json-c-0.13.1-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3bb6aa6c7aa0c3186c3dbce23661ec709c43c0e87a22a7e952148f515e2bfc82",
    ],
)

rpm(
    name = "json-c-0__0.13.1-3.el8.x86_64",
    sha256 = "5035057553b61cb389c67aa2c29d99c8e0c1677369dad179d683942ccee90b3f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/json-c-0.13.1-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5035057553b61cb389c67aa2c29d99c8e0c1677369dad179d683942ccee90b3f",
    ],
)

rpm(
    name = "json-glib-0__1.4.4-1.el8.aarch64",
    sha256 = "01e70480bb032d5e0b60c5e732d4302d3a0ce73d1502a1729280d2b36e7e1c1a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/json-glib-1.4.4-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/01e70480bb032d5e0b60c5e732d4302d3a0ce73d1502a1729280d2b36e7e1c1a",
    ],
)

rpm(
    name = "json-glib-0__1.4.4-1.el8.x86_64",
    sha256 = "98a6386df94fc9595365c3ecbc630708420fa68d1774614a723dec4a55e84b9c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/json-glib-1.4.4-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/98a6386df94fc9595365c3ecbc630708420fa68d1774614a723dec4a55e84b9c",
    ],
)

rpm(
    name = "kernel-headers-0__4.18.0-408.el8.aarch64",
    sha256 = "208e7b141b8ad93ee6bd748f5c4117ed5a947b4ff48071d4fcdb826670aad76a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/kernel-headers-4.18.0-408.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/208e7b141b8ad93ee6bd748f5c4117ed5a947b4ff48071d4fcdb826670aad76a",
    ],
)

rpm(
    name = "kernel-headers-0__4.18.0-494.el8.x86_64",
    sha256 = "f9d8f809c11b96e8835dbf24ad2721f0ea9914da1e1b6bebea5455c39ae826dc",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/kernel-headers-4.18.0-494.el8.x86_64.rpm"],
)

rpm(
    name = "keyutils-libs-0__1.5.10-9.el8.aarch64",
    sha256 = "c5af4350099a98929777412fb23e74c3bd2d7d8bbd09c2969a59d45937738aad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/keyutils-libs-1.5.10-9.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c5af4350099a98929777412fb23e74c3bd2d7d8bbd09c2969a59d45937738aad",
    ],
)

rpm(
    name = "keyutils-libs-0__1.5.10-9.el8.x86_64",
    sha256 = "423329269c719b96ada88a27325e1923e764a70672e0dc6817e22eff07a9af7b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/keyutils-libs-1.5.10-9.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/423329269c719b96ada88a27325e1923e764a70672e0dc6817e22eff07a9af7b",
    ],
)

rpm(
    name = "khmeros-bokor-fonts-0__5.0-25.el8.x86_64",
    sha256 = "bb26db649aa2b9be0370289a20c6971b30daeffdfc3ae54e036d160079342e18",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/khmeros-bokor-fonts-5.0-25.el8.noarch.rpm"],
)

rpm(
    name = "khmeros-fonts-common-0__5.0-25.el8.x86_64",
    sha256 = "daef36570013d7a828ada308aee74e010ac3d8c5d7e7a4e6a85d57a13d14f3a6",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/khmeros-fonts-common-5.0-25.el8.noarch.rpm"],
)

rpm(
    name = "kmod-0__25-19.el8.aarch64",
    sha256 = "056e83e9da3c6a582e83634b66c3ead78f1729f4b9dbd9970dbf3bfdc45edb54",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/kmod-25-19.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/056e83e9da3c6a582e83634b66c3ead78f1729f4b9dbd9970dbf3bfdc45edb54",
    ],
)

rpm(
    name = "kmod-0__25-19.el8.x86_64",
    sha256 = "37c299fdaa42efb0d653ba5e22c83bd20833af1244b66ed6ea880e75c1672dd2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/kmod-25-19.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/37c299fdaa42efb0d653ba5e22c83bd20833af1244b66ed6ea880e75c1672dd2",
    ],
)

rpm(
    name = "kmod-libs-0__25-19.el8.aarch64",
    sha256 = "053b443be1bb0cbbc6da3314775391950350106462cc1dae01c7aed4358bf852",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/kmod-libs-25-19.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/053b443be1bb0cbbc6da3314775391950350106462cc1dae01c7aed4358bf852",
    ],
)

rpm(
    name = "kmod-libs-0__25-19.el8.x86_64",
    sha256 = "46a2ddc6067ed12089f04f2255c57117992807d707e280fc002f3ce786fc2abf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/kmod-libs-25-19.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/46a2ddc6067ed12089f04f2255c57117992807d707e280fc002f3ce786fc2abf",
    ],
)

rpm(
    name = "krb5-libs-0__1.18.2-21.el8.aarch64",
    sha256 = "30f23e30b9e0de1c62a6b1d9f7031f7d5b263b458ad43c43915ea41a34711a92",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/krb5-libs-1.18.2-21.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/30f23e30b9e0de1c62a6b1d9f7031f7d5b263b458ad43c43915ea41a34711a92",
    ],
)

rpm(
    name = "krb5-libs-0__1.18.2-22.el8.x86_64",
    sha256 = "1dc1106dda34b328115dff7b2eca007dd93befb0bfa6a66c619f4b5637f6e004",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/krb5-libs-1.18.2-22.el8.x86_64.rpm"],
)

rpm(
    name = "less-0__530-1.el8.x86_64",
    sha256 = "f94172554b8ceeab97b560d0b05c2e2df4b2e737471adce6eca82fd3209be254",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/less-530-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f94172554b8ceeab97b560d0b05c2e2df4b2e737471adce6eca82fd3209be254",
    ],
)

rpm(
    name = "libICE-0__1.0.9-15.el8.x86_64",
    sha256 = "4ffd6fc4d6fc75c6666aecdda49ec9a559635480588562c9a85e36cc962569b5",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libICE-1.0.9-15.el8.x86_64.rpm"],
)

rpm(
    name = "libSM-0__1.2.3-1.el8.x86_64",
    sha256 = "962688a146f961fd8dece4a4f3e1a9f79e51d40b26355fbe7d579bc97ffa8d58",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libSM-1.2.3-1.el8.x86_64.rpm"],
)

rpm(
    name = "libX11-0__1.6.8-5.el8.x86_64",
    sha256 = "2ab1fef0235ca1cafbe23ad6c9dbe3cd5d48ab99561f7e880456606a1ea78ae4",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libX11-1.6.8-5.el8.x86_64.rpm"],
)

rpm(
    name = "libX11-common-0__1.6.8-5.el8.x86_64",
    sha256 = "53760c2d7e17f31bd1f999cb448e902d4ba68eff0f99f6203d85998cd4c44918",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libX11-common-1.6.8-5.el8.noarch.rpm"],
)

rpm(
    name = "libX11-xcb-0__1.6.8-5.el8.x86_64",
    sha256 = "d8d58813823c960f344bdebf4ed888b53781c81175e97badd814a86dc811b362",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libX11-xcb-1.6.8-5.el8.x86_64.rpm"],
)

rpm(
    name = "libXau-0__1.0.9-3.el8.x86_64",
    sha256 = "49d972c660b9238dd1d58ab5952285b77e440820bf4563cce2b5ecd2f6ceba78",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXau-1.0.9-3.el8.x86_64.rpm"],
)

rpm(
    name = "libXext-0__1.3.4-1.el8.x86_64",
    sha256 = "9869db60ee2b6d8f2115937857fb0586802720a75e043baf21514011a9fa79aa",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXext-1.3.4-1.el8.x86_64.rpm"],
)

rpm(
    name = "libXfixes-0__5.0.3-7.el8.x86_64",
    sha256 = "81f7df4c736963636c9ebab7441ca4f4e41a7483ef6e7b2ac0d1bf37afe52a14",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXfixes-5.0.3-7.el8.x86_64.rpm"],
)

rpm(
    name = "libXft-0__2.3.3-1.el8.x86_64",
    sha256 = "ab754d37388e0ecb52152e41c9560392dd0d504939f850ff25d9794090f8b101",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXft-2.3.3-1.el8.x86_64.rpm"],
)

rpm(
    name = "libXi-0__1.7.10-1.el8.x86_64",
    sha256 = "4a795d275c32ba03551178a088185af08391e5e137c6669eb8601e56c905631b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXi-1.7.10-1.el8.x86_64.rpm"],
)

rpm(
    name = "libXrender-0__0.9.10-7.el8.x86_64",
    sha256 = "11ac209220f3a53a762adebb4eeb43190e02ef7cdad2c54bcb474b206f7eb6f2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXrender-0.9.10-7.el8.x86_64.rpm"],
)

rpm(
    name = "libXtst-0__1.2.3-7.el8.x86_64",
    sha256 = "a19ecb3f3814649210b4667cf82ebca98b0d00e1b8222bc2f5aca2cc062999e6",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXtst-1.2.3-7.el8.x86_64.rpm"],
)

rpm(
    name = "libXv-0__1.0.11-7.el8.x86_64",
    sha256 = "e04aeb7921dc1864379f670172c69d2e6241c0ca602b7bdee42079596910a4c3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXv-1.0.11-7.el8.x86_64.rpm"],
)

rpm(
    name = "libXxf86vm-0__1.1.4-9.el8.x86_64",
    sha256 = "5813a48905fafc027e4b71b8113e654f23c963a9526015ec4fd0738b68de264a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libXxf86vm-1.1.4-9.el8.x86_64.rpm"],
)

rpm(
    name = "libacl-0__2.2.53-1.el8.aarch64",
    sha256 = "c4cfed85e5a0db903ad134b4327b1714e5453fcf5c4348ec93ab344860a970ef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libacl-2.2.53-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c4cfed85e5a0db903ad134b4327b1714e5453fcf5c4348ec93ab344860a970ef",
    ],
)

rpm(
    name = "libacl-0__2.2.53-1.el8.x86_64",
    sha256 = "4973664648b7ed9278bf29074ec6a60a9f660aa97c23a283750483f64429d5bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libacl-2.2.53-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4973664648b7ed9278bf29074ec6a60a9f660aa97c23a283750483f64429d5bb",
    ],
)

rpm(
    name = "libaio-0__0.3.112-1.el8.aarch64",
    sha256 = "3bcb1ade26c217ead2da81c92b7ef78026c4a78383d28b6e825a7b840cae97fa",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libaio-0.3.112-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3bcb1ade26c217ead2da81c92b7ef78026c4a78383d28b6e825a7b840cae97fa",
    ],
)

rpm(
    name = "libaio-0__0.3.112-1.el8.x86_64",
    sha256 = "2c63399bee449fb6e921671a9bbf3356fda73f890b578820f7d926202e98a479",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libaio-0.3.112-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/2c63399bee449fb6e921671a9bbf3356fda73f890b578820f7d926202e98a479",
    ],
)

rpm(
    name = "libarchive-0__3.3.3-4.el8.aarch64",
    sha256 = "0dd36d8de0c8f40cbb01d9d1fc072eebf28967302b1eed287d7ad958aa383673",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libarchive-3.3.3-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0dd36d8de0c8f40cbb01d9d1fc072eebf28967302b1eed287d7ad958aa383673",
    ],
)

rpm(
    name = "libarchive-0__3.3.3-5.el8.x86_64",
    sha256 = "d2e208573fde1934bd11c52a45edd6c360d365e0c675b43043fe863a248f5f5b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libarchive-3.3.3-5.el8.x86_64.rpm"],
)

rpm(
    name = "libasan-0__8.5.0-15.el8.aarch64",
    sha256 = "34e627e042580439b22395344a15dbfb7fe0ce7a93530217ce38134278084c60",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libasan-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/34e627e042580439b22395344a15dbfb7fe0ce7a93530217ce38134278084c60",
    ],
)

rpm(
    name = "libassuan-0__2.5.1-3.el8.x86_64",
    sha256 = "b49e8c674e462e3f494e825c5fca64002008cbf7a47bf131aa98b7f41678a6eb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libassuan-2.5.1-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/b49e8c674e462e3f494e825c5fca64002008cbf7a47bf131aa98b7f41678a6eb",
    ],
)

rpm(
    name = "libasyncns-0__0.8-14.el8.x86_64",
    sha256 = "bf545f886dbb4980e392d94a3e42c5ce0bfa5e4a29356ae1b7fcf825deab25cf",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libasyncns-0.8-14.el8.x86_64.rpm"],
)

rpm(
    name = "libatomic-0__8.5.0-15.el8.aarch64",
    sha256 = "58ea796ac4166da751068de1e250378e83b016586e08e2b2fb85d5903387f3b4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libatomic-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/58ea796ac4166da751068de1e250378e83b016586e08e2b2fb85d5903387f3b4",
    ],
)

rpm(
    name = "libattr-0__2.4.48-3.el8.aarch64",
    sha256 = "6a6db7eab6e53dccc54116d2ddf86b02db4cff332a58b868f7ba778a99666c58",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libattr-2.4.48-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/6a6db7eab6e53dccc54116d2ddf86b02db4cff332a58b868f7ba778a99666c58",
    ],
)

rpm(
    name = "libattr-0__2.4.48-3.el8.x86_64",
    sha256 = "a02e1344ccde1747501ceeeff37df4f18149fb79b435aa22add08cff6bab3a5a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libattr-2.4.48-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/a02e1344ccde1747501ceeeff37df4f18149fb79b435aa22add08cff6bab3a5a",
    ],
)

rpm(
    name = "libblkid-0__2.32.1-38.el8.aarch64",
    sha256 = "9337f86080be4696747646024137295f472e17f56bba764348c74201fcfa694a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libblkid-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9337f86080be4696747646024137295f472e17f56bba764348c74201fcfa694a",
    ],
)

rpm(
    name = "libblkid-0__2.32.1-42.el8.x86_64",
    sha256 = "62f805c2be204cd6a1d97fe96317af252e8f0fb3742e6652d2adbef91b9535a3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libblkid-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "libbpf-0__0.5.0-1.el8.aarch64",
    sha256 = "1ecce335e1821b021b9fcfc8ffe1093a75f474249503510cf2bc499c61848cbb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libbpf-0.5.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/1ecce335e1821b021b9fcfc8ffe1093a75f474249503510cf2bc499c61848cbb",
    ],
)

rpm(
    name = "libbpf-0__0.5.0-1.el8.x86_64",
    sha256 = "4d25308c27041d8a88a3340be12591e9bd46c9aebbe4195ee5d2f712d63ce033",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libbpf-0.5.0-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4d25308c27041d8a88a3340be12591e9bd46c9aebbe4195ee5d2f712d63ce033",
    ],
)

rpm(
    name = "libburn-0__1.4.8-3.el8.aarch64",
    sha256 = "5ae88291a28b2a86efb6cdc8ff67baaf73dad1428c858c8b0fa9e8df0f0f041c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libburn-1.4.8-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5ae88291a28b2a86efb6cdc8ff67baaf73dad1428c858c8b0fa9e8df0f0f041c",
    ],
)

rpm(
    name = "libburn-0__1.4.8-3.el8.x86_64",
    sha256 = "d4b0815ced6c1ec209b78fee4e2c1ee74efcd401d5462268b47d94a28ebfaf31",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libburn-1.4.8-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/d4b0815ced6c1ec209b78fee4e2c1ee74efcd401d5462268b47d94a28ebfaf31",
    ],
)

rpm(
    name = "libcacard-3__2.7.0-2.el8_1.x86_64",
    sha256 = "f1278a5d0bd7267c8f53f40c30ef6f33ae3696407f5ee8c1617d31cdeee3ee03",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libcacard-2.7.0-2.el8_1.x86_64.rpm"],
)

rpm(
    name = "libcap-0__2.48-4.el8.aarch64",
    sha256 = "f1fb5fe3b85ce5016a7882ccd9640b80f8fd6fbad1c44dc02076a8cdf33fc33d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libcap-2.48-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/f1fb5fe3b85ce5016a7882ccd9640b80f8fd6fbad1c44dc02076a8cdf33fc33d",
    ],
)

rpm(
    name = "libcap-0__2.48-4.el8.x86_64",
    sha256 = "34f69bed9ae0f5ba314a62172e8cfd9cf6795cb0c3bd29f15d174fc2a0acbb5b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcap-2.48-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/34f69bed9ae0f5ba314a62172e8cfd9cf6795cb0c3bd29f15d174fc2a0acbb5b",
    ],
)

rpm(
    name = "libcap-ng-0__0.7.11-1.el8.aarch64",
    sha256 = "cbbbb1771fe9cfaa3284837e5e02cd2101190504ea0baa0278c9cfb2b169073c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libcap-ng-0.7.11-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/cbbbb1771fe9cfaa3284837e5e02cd2101190504ea0baa0278c9cfb2b169073c",
    ],
)

rpm(
    name = "libcap-ng-0__0.7.11-1.el8.x86_64",
    sha256 = "15c3c696ec2e21f48e951f426d3c77b53b579605b8dd89843b35c9ab9b1d7e69",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcap-ng-0.7.11-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/15c3c696ec2e21f48e951f426d3c77b53b579605b8dd89843b35c9ab9b1d7e69",
    ],
)

rpm(
    name = "libcom_err-0__1.45.6-5.el8.aarch64",
    sha256 = "bdd5ab69772a43725e1f8397e8142094bdd28b21b65ff02da74a8fc986424f3c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libcom_err-1.45.6-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/bdd5ab69772a43725e1f8397e8142094bdd28b21b65ff02da74a8fc986424f3c",
    ],
)

rpm(
    name = "libcom_err-0__1.45.6-5.el8.x86_64",
    sha256 = "4e4f13acac0477f0a121812107a9939ea2164eebab052813f1618d5b7df5d87a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcom_err-1.45.6-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4e4f13acac0477f0a121812107a9939ea2164eebab052813f1618d5b7df5d87a",
    ],
)

rpm(
    name = "libconfig-0__1.5-9.el8.x86_64",
    sha256 = "a4a2c7c0e2f454abae61dddbf4286a0b3617a8159fd20659bddbcedd8eaaa80c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libconfig-1.5-9.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/a4a2c7c0e2f454abae61dddbf4286a0b3617a8159fd20659bddbcedd8eaaa80c",
    ],
)

rpm(
    name = "libcroco-0__0.6.12-4.el8_2.1.aarch64",
    sha256 = "0022ec2580783f68e603e9d4751478c28f2b383c596b4e896469077748771bfe",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libcroco-0.6.12-4.el8_2.1.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0022ec2580783f68e603e9d4751478c28f2b383c596b4e896469077748771bfe",
    ],
)

rpm(
    name = "libcroco-0__0.6.12-4.el8_2.1.x86_64",
    sha256 = "87f2a4d80cf4f6a958f3662c6a382edefc32a5ad2c364a7f3c40337cf2b1e8ba",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libcroco-0.6.12-4.el8_2.1.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/87f2a4d80cf4f6a958f3662c6a382edefc32a5ad2c364a7f3c40337cf2b1e8ba",
    ],
)

rpm(
    name = "libcurl-minimal-0__7.61.1-25.el8.aarch64",
    sha256 = "2852cffc539a2178e52304b24c83ded856a7da3dbc76c0f21c7db522c72b03b1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libcurl-minimal-7.61.1-25.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2852cffc539a2178e52304b24c83ded856a7da3dbc76c0f21c7db522c72b03b1",
    ],
)

rpm(
    name = "libcurl-minimal-0__7.61.1-31.el8.x86_64",
    sha256 = "b62075949c068384a11f6be0882bac80975ad71b9f7a2c8c1a49236eb7eed176",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libcurl-minimal-7.61.1-31.el8.x86_64.rpm"],
)

rpm(
    name = "libdatrie-0__0.2.9-7.el8.x86_64",
    sha256 = "7d43fda5ced8faf64d09cb3c47dcb6c9aa1fd936fc49f8609af29780c7a75f90",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libdatrie-0.2.9-7.el8.x86_64.rpm"],
)

rpm(
    name = "libdb-0__5.3.28-42.el8_4.aarch64",
    sha256 = "7ab75211c6fca91324039d3c2eb73903f2da73c17d6edaf8e997462ce4fbb46c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libdb-5.3.28-42.el8_4.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7ab75211c6fca91324039d3c2eb73903f2da73c17d6edaf8e997462ce4fbb46c",
    ],
)

rpm(
    name = "libdb-0__5.3.28-42.el8_4.x86_64",
    sha256 = "058f77432592f4337039cbb7a4e5f680020d8b85a477080c01d96a7728de6934",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libdb-5.3.28-42.el8_4.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/058f77432592f4337039cbb7a4e5f680020d8b85a477080c01d96a7728de6934",
    ],
)

rpm(
    name = "libdb-utils-0__5.3.28-42.el8_4.aarch64",
    sha256 = "84d0f5ae6a2bb4855d800c8e26be44bd06ac5f3c286a7877310bddabec12477a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libdb-utils-5.3.28-42.el8_4.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/84d0f5ae6a2bb4855d800c8e26be44bd06ac5f3c286a7877310bddabec12477a",
    ],
)

rpm(
    name = "libdb-utils-0__5.3.28-42.el8_4.x86_64",
    sha256 = "ceb3dbd9e0d39d3e6b566eaf05359de4dd9a18d09da9238f2319f66f7cfebf7b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libdb-utils-5.3.28-42.el8_4.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/ceb3dbd9e0d39d3e6b566eaf05359de4dd9a18d09da9238f2319f66f7cfebf7b",
    ],
)

rpm(
    name = "libdrm-0__2.4.115-2.el8.x86_64",
    sha256 = "0c6b3cfd47ab593747c47145b13c74b3425d123ec3aee6d757ac848fdfc06e18",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libdrm-2.4.115-2.el8.x86_64.rpm"],
)

rpm(
    name = "libepoxy-0__1.5.8-1.el8.x86_64",
    sha256 = "a825b6169fbd3377aed37ee63114aff24ac1a0ae123710c4559a56564fb0c15a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libepoxy-1.5.8-1.el8.x86_64.rpm"],
)

rpm(
    name = "libevent-0__2.1.8-5.el8.aarch64",
    sha256 = "a7fed3b521d23e60539dcbd548bda2a62f0d745a99dd5feeb43b6539f7f88232",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libevent-2.1.8-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a7fed3b521d23e60539dcbd548bda2a62f0d745a99dd5feeb43b6539f7f88232",
    ],
)

rpm(
    name = "libevent-0__2.1.8-5.el8.x86_64",
    sha256 = "746bac6bb011a586d42bd82b2f8b25bac72c9e4bbd4c19a34cf88eadb1d83873",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libevent-2.1.8-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/746bac6bb011a586d42bd82b2f8b25bac72c9e4bbd4c19a34cf88eadb1d83873",
    ],
)

rpm(
    name = "libfdisk-0__2.32.1-38.el8.aarch64",
    sha256 = "6b34849e8d42cfa88a1a7d4862fcbb56dfa4477d8bc8c8415a801aa41261b2d6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libfdisk-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/6b34849e8d42cfa88a1a7d4862fcbb56dfa4477d8bc8c8415a801aa41261b2d6",
    ],
)

rpm(
    name = "libfdisk-0__2.32.1-42.el8.x86_64",
    sha256 = "71691d95657a40d8019c79f29d013977bce445baf9595f3c53753b9e13201eb7",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libfdisk-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "libfdt-0__1.6.0-1.el8.aarch64",
    sha256 = "a2f3c86d18ee25ce4764a1df0854c63b615db37291ef9780e649f0123a92acf5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libfdt-1.6.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a2f3c86d18ee25ce4764a1df0854c63b615db37291ef9780e649f0123a92acf5",
    ],
)

rpm(
    name = "libfdt-0__1.6.0-1.el8.x86_64",
    sha256 = "1788b4786715c45a1ac90ca9f413ef51f2cdd03170a981e0ef13eab204f44429",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libfdt-1.6.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "libffi-0__3.1-23.el8.aarch64",
    sha256 = "ba34d0bb067722c37dd4367534d82aa18c659facbfd17952f8d826e8662cb7c1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libffi-3.1-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/ba34d0bb067722c37dd4367534d82aa18c659facbfd17952f8d826e8662cb7c1",
    ],
)

rpm(
    name = "libffi-0__3.1-24.el8.x86_64",
    sha256 = "3a0b75d820053e5a75f3a9a04fa2b78a7ac559140d7ce98f0d684cd8433ece81",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libffi-3.1-24.el8.x86_64.rpm"],
)

rpm(
    name = "libgcc-0__8.5.0-15.el8.aarch64",
    sha256 = "f62a7bd6b2ce584a9ee3561513053372db492efd867333b27f7ba9a3844ff553",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libgcc-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/f62a7bd6b2ce584a9ee3561513053372db492efd867333b27f7ba9a3844ff553",
    ],
)

rpm(
    name = "libgcc-0__8.5.0-20.el8.x86_64",
    sha256 = "e4126ee8b94586964f3d0aa714e458a6ca6b39394454fc2de0cc14a829b08412",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libgcc-8.5.0-20.el8.x86_64.rpm"],
)

rpm(
    name = "libgcrypt-0__1.8.5-7.el8.aarch64",
    sha256 = "88a32029615cc5986884cbab1b5c137e455b9ef08b23c6219b9ec9b42079be88",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libgcrypt-1.8.5-7.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/88a32029615cc5986884cbab1b5c137e455b9ef08b23c6219b9ec9b42079be88",
    ],
)

rpm(
    name = "libgcrypt-0__1.8.5-7.el8.x86_64",
    sha256 = "01541f1263532f80114111a44f797d6a8eed75744db997e85fddd021e636c5bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libgcrypt-1.8.5-7.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/01541f1263532f80114111a44f797d6a8eed75744db997e85fddd021e636c5bb",
    ],
)

rpm(
    name = "libglvnd-1__1.3.4-1.el8.x86_64",
    sha256 = "a94d8debdf9e1f20dc561baaa1c5903ef85c511f2b647092b5d8908ccfbf6a6a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-1.3.4-1.el8.x86_64.rpm"],
)

rpm(
    name = "libglvnd-egl-1__1.3.4-1.el8.x86_64",
    sha256 = "0c7e300aae2f33e48ae5bedbbcf9c6b50af18477d9493075c73355c7fe080b43",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-egl-1.3.4-1.el8.x86_64.rpm"],
)

rpm(
    name = "libglvnd-gles-1__1.3.4-1.el8.x86_64",
    sha256 = "77f73a543253876ab922320e48b6025b019fa0a109a43da7c1bffe7f0a096522",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-gles-1.3.4-1.el8.x86_64.rpm"],
)

rpm(
    name = "libglvnd-glx-1__1.3.4-1.el8.x86_64",
    sha256 = "bf40ab7dbe4ae55fb5403204df6b9b27013898cdb450da39e8e19a2c4229aea5",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libglvnd-glx-1.3.4-1.el8.x86_64.rpm"],
)

rpm(
    name = "libgomp-0__8.5.0-15.el8.aarch64",
    sha256 = "edb71029b4d451240f53399652c872035ebab3237bfa4d416e010be58bc8a056",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libgomp-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/edb71029b4d451240f53399652c872035ebab3237bfa4d416e010be58bc8a056",
    ],
)

rpm(
    name = "libgomp-0__8.5.0-20.el8.x86_64",
    sha256 = "b5363083fcb7dd79c93e5178a9a4876771d0aef3456e8b48c526383f21e849c8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libgomp-8.5.0-20.el8.x86_64.rpm"],
)

rpm(
    name = "libgpg-error-0__1.31-1.el8.aarch64",
    sha256 = "b953729a0a2be24749aeee9f00853fdc3227737971cf052a999a37ac36387cd9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libgpg-error-1.31-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b953729a0a2be24749aeee9f00853fdc3227737971cf052a999a37ac36387cd9",
    ],
)

rpm(
    name = "libgpg-error-0__1.31-1.el8.x86_64",
    sha256 = "845a0732d9d7a01b909124cd8293204764235c2d856227c7a74dfa0e38113e34",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libgpg-error-1.31-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/845a0732d9d7a01b909124cd8293204764235c2d856227c7a74dfa0e38113e34",
    ],
)

rpm(
    name = "libguestfs-1__1.44.0-5.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "a0cbdc5c27f1d45480b2c4b28caac267a9a879de19091efa057119705611cbef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libguestfs-1.44.0-5.module_el8.6.0+1087+b42c8331.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/a0cbdc5c27f1d45480b2c4b28caac267a9a879de19091efa057119705611cbef",
    ],
)

rpm(
    name = "libguestfs-tools-1__1.44.0-5.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "fb8f81a46a30e7254f614f5b0376af1fef45c9082b2e6f88061e61cc046de99f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libguestfs-tools-1.44.0-5.module_el8.6.0+1087+b42c8331.noarch.rpm",
        "https://storage.googleapis.com/builddeps/fb8f81a46a30e7254f614f5b0376af1fef45c9082b2e6f88061e61cc046de99f",
    ],
)

rpm(
    name = "libguestfs-tools-c-1__1.44.0-5.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "61bb7c563c80a44fcce4bf9c1004539cf33165700f94a3ee384483345f60edc2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libguestfs-tools-c-1.44.0-5.module_el8.6.0+1087+b42c8331.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/61bb7c563c80a44fcce4bf9c1004539cf33165700f94a3ee384483345f60edc2",
    ],
)

rpm(
    name = "libibverbs-0__41.0-1.el8.aarch64",
    sha256 = "64304bd0d2e426b705f798fda9441fd20efcd71e7b99e536ba27636c73d1dcba",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libibverbs-41.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/64304bd0d2e426b705f798fda9441fd20efcd71e7b99e536ba27636c73d1dcba",
    ],
)

rpm(
    name = "libibverbs-0__46.0-1.el8.1.x86_64",
    sha256 = "4d5ba41754a35532113d11a84e0513b7377e808d99cef171965220e48b2dfb1b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libibverbs-46.0-1.el8.1.x86_64.rpm"],
)

rpm(
    name = "libicu-0__60.3-2.el8_1.x86_64",
    sha256 = "d703112d21afadf069e0ba6ef2a34b0ef760ccc969a2b7dd5d38761113c3d17e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libicu-60.3-2.el8_1.x86_64.rpm"],
)

rpm(
    name = "libidn2-0__2.2.0-1.el8.aarch64",
    sha256 = "b62589101a60a365ef34447cae78f62e6dba560d403dc56c87036709ea00ad88",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libidn2-2.2.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b62589101a60a365ef34447cae78f62e6dba560d403dc56c87036709ea00ad88",
    ],
)

rpm(
    name = "libidn2-0__2.2.0-1.el8.x86_64",
    sha256 = "7e08785bd3cc0e09f9ab4bf600b98b705203d552cbb655269a939087987f1694",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libidn2-2.2.0-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7e08785bd3cc0e09f9ab4bf600b98b705203d552cbb655269a939087987f1694",
    ],
)

rpm(
    name = "libisoburn-0__1.4.8-4.el8.aarch64",
    sha256 = "3ff828ef16f6033227d71207bc1b00983b826172fe7c575cd7590a72d846d831",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libisoburn-1.4.8-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3ff828ef16f6033227d71207bc1b00983b826172fe7c575cd7590a72d846d831",
    ],
)

rpm(
    name = "libisoburn-0__1.4.8-4.el8.x86_64",
    sha256 = "7aa030310250b462d90895d8c04ce47695722d86f5470930fdf8bfba0570c4dc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libisoburn-1.4.8-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7aa030310250b462d90895d8c04ce47695722d86f5470930fdf8bfba0570c4dc",
    ],
)

rpm(
    name = "libisofs-0__1.4.8-3.el8.aarch64",
    sha256 = "2e5435efba38348be8d33a43e5abbffc85f7c5a9504ebe6451b87c44006b3b4c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libisofs-1.4.8-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2e5435efba38348be8d33a43e5abbffc85f7c5a9504ebe6451b87c44006b3b4c",
    ],
)

rpm(
    name = "libisofs-0__1.4.8-3.el8.x86_64",
    sha256 = "66b7bcc256b62736f7b3d33fa65c6a91a17e08c61484a7c3748f4f86b4589bc7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libisofs-1.4.8-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/66b7bcc256b62736f7b3d33fa65c6a91a17e08c61484a7c3748f4f86b4589bc7",
    ],
)

rpm(
    name = "libjpeg-turbo-0__1.5.3-12.el8.x86_64",
    sha256 = "94b6e9d7ebd6d3bee36ac8b5c381a305bc16158a7de5bf7b71ddf2f41f10f03c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libjpeg-turbo-1.5.3-12.el8.x86_64.rpm"],
)

rpm(
    name = "libksba-0__1.3.5-9.el8.x86_64",
    sha256 = "ee29007771482013da9a6b09534b72ee8b7fb883fb3272082bc7b8b85144f9e3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libksba-1.3.5-9.el8.x86_64.rpm"],
)

rpm(
    name = "libmnl-0__1.0.4-6.el8.aarch64",
    sha256 = "fbe4f2cb2660ebe3cb90a73c7dfbd978059af138356e46c9a93049761c0467ef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libmnl-1.0.4-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/fbe4f2cb2660ebe3cb90a73c7dfbd978059af138356e46c9a93049761c0467ef",
    ],
)

rpm(
    name = "libmnl-0__1.0.4-6.el8.x86_64",
    sha256 = "30fab73ee155f03dbbd99c1e30fe59dfba4ae8fdb2e7213451ccc36d6918bfcc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libmnl-1.0.4-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/30fab73ee155f03dbbd99c1e30fe59dfba4ae8fdb2e7213451ccc36d6918bfcc",
    ],
)

rpm(
    name = "libmount-0__2.32.1-38.el8.aarch64",
    sha256 = "0fc8a00a2fb09a3d9d47e01bdf2ee5392fc7d2702ec27882dad466ae9a43b4af",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libmount-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/0fc8a00a2fb09a3d9d47e01bdf2ee5392fc7d2702ec27882dad466ae9a43b4af",
    ],
)

rpm(
    name = "libmount-0__2.32.1-42.el8.x86_64",
    sha256 = "75d29c9685aa863557013f18bc10f114d04e165c330494dc1e90d22c829a3363",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libmount-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "libmpc-0__1.1.0-9.1.el8.aarch64",
    sha256 = "9701bd94db9b467e11590b2de375a122ab61aa8d624be7df22631a6da91c79e4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libmpc-1.1.0-9.1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9701bd94db9b467e11590b2de375a122ab61aa8d624be7df22631a6da91c79e4",
    ],
)

rpm(
    name = "libmpc-0__1.1.0-9.1.el8.x86_64",
    sha256 = "93c2232d1885ec6265159f4669aeb13335a80e74d3ae0832f624678d87ea3638",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/libmpc-1.1.0-9.1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/93c2232d1885ec6265159f4669aeb13335a80e74d3ae0832f624678d87ea3638",
    ],
)

rpm(
    name = "libnetfilter_conntrack-0__1.0.6-5.el8.aarch64",
    sha256 = "4e43b0f85746f74064b082fdf6914ba4e9fe386651b1c39aeaecc702b2a59fc0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnetfilter_conntrack-1.0.6-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4e43b0f85746f74064b082fdf6914ba4e9fe386651b1c39aeaecc702b2a59fc0",
    ],
)

rpm(
    name = "libnetfilter_conntrack-0__1.0.6-5.el8.x86_64",
    sha256 = "224100af3ecfc80c416796ec02c7c4dd113a38d42349d763485f3b42f260493f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnetfilter_conntrack-1.0.6-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/224100af3ecfc80c416796ec02c7c4dd113a38d42349d763485f3b42f260493f",
    ],
)

rpm(
    name = "libnfnetlink-0__1.0.1-13.el8.aarch64",
    sha256 = "8422fbc84108abc9a89fe98cef9cd18ad1788b4dc6a9ec0bba1836b772fcaeda",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnfnetlink-1.0.1-13.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8422fbc84108abc9a89fe98cef9cd18ad1788b4dc6a9ec0bba1836b772fcaeda",
    ],
)

rpm(
    name = "libnfnetlink-0__1.0.1-13.el8.x86_64",
    sha256 = "cec98aa5fbefcb99715921b493b4f92d34c4eeb823e9c8741aa75e280def89f1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnfnetlink-1.0.1-13.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/cec98aa5fbefcb99715921b493b4f92d34c4eeb823e9c8741aa75e280def89f1",
    ],
)

rpm(
    name = "libnftnl-0__1.1.5-5.el8.aarch64",
    sha256 = "00522e43ce63cf63468052e627a429ededac0815212c644f4eadda88b990c3ee",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnftnl-1.1.5-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/00522e43ce63cf63468052e627a429ededac0815212c644f4eadda88b990c3ee",
    ],
)

rpm(
    name = "libnftnl-0__1.2.2-3.el8.x86_64",
    sha256 = "d6792ecfcc9511506a99cfe0abe95111b6714626e27d132bbe8ee37cb7f5dc71",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libnftnl-1.2.2-3.el8.x86_64.rpm"],
)

rpm(
    name = "libnghttp2-0__1.33.0-3.el8_2.1.aarch64",
    sha256 = "23e9ff009c2316652c3bcd96a8b69b5bc26f2acd46214f652a7ce26a572cbabb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnghttp2-1.33.0-3.el8_2.1.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/23e9ff009c2316652c3bcd96a8b69b5bc26f2acd46214f652a7ce26a572cbabb",
    ],
)

rpm(
    name = "libnghttp2-0__1.33.0-3.el8_2.1.x86_64",
    sha256 = "0126a384853d46484dec98601a4cb4ce58b2e0411f8f7ef09937174dd5975bac",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnghttp2-1.33.0-3.el8_2.1.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/0126a384853d46484dec98601a4cb4ce58b2e0411f8f7ef09937174dd5975bac",
    ],
)

rpm(
    name = "libnl3-0__3.7.0-1.el8.aarch64",
    sha256 = "8c8dd63daf7ad4c6322a4316fceb256f1cfd2d8244bce515bbae539b4314a643",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnl3-3.7.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8c8dd63daf7ad4c6322a4316fceb256f1cfd2d8244bce515bbae539b4314a643",
    ],
)

rpm(
    name = "libnl3-0__3.7.0-1.el8.x86_64",
    sha256 = "9ce7aa4d7bd810448d9fb3aa85a66cca00950f7c2c59bc9721ced3e4f3ad2885",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnl3-3.7.0-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/9ce7aa4d7bd810448d9fb3aa85a66cca00950f7c2c59bc9721ced3e4f3ad2885",
    ],
)

rpm(
    name = "libnsl2-0__1.2.0-2.20180605git4a062cf.el8.aarch64",
    sha256 = "b33276781f442757afd5e066ead95ec79927f2aed608a368420f230d5ee28686",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libnsl2-1.2.0-2.20180605git4a062cf.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b33276781f442757afd5e066ead95ec79927f2aed608a368420f230d5ee28686",
    ],
)

rpm(
    name = "libnsl2-0__1.2.0-2.20180605git4a062cf.el8.x86_64",
    sha256 = "5846c73edfa2ff673989728e9621cce6a1369eb2f8a269ac5205c381a10d327a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libnsl2-1.2.0-2.20180605git4a062cf.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5846c73edfa2ff673989728e9621cce6a1369eb2f8a269ac5205c381a10d327a",
    ],
)

rpm(
    name = "libogg-2__1.3.2-10.el8.x86_64",
    sha256 = "35f80ecc7540818e702e49c13cce081bda78ac28087247acf71e6d774e6f0c3e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libogg-1.3.2-10.el8.x86_64.rpm"],
)

rpm(
    name = "libpcap-14__1.9.1-5.el8.aarch64",
    sha256 = "239019a8aadb26e4b015d99f7fe49e80c2d1dfa227f7c71322dca2a2a85c2de1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libpcap-1.9.1-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/239019a8aadb26e4b015d99f7fe49e80c2d1dfa227f7c71322dca2a2a85c2de1",
    ],
)

rpm(
    name = "libpcap-14__1.9.1-5.el8.x86_64",
    sha256 = "7f429477c26b4650a3eca4a27b3972ff0857c843bdb4d8fcb02086da111ce5fd",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libpcap-1.9.1-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7f429477c26b4650a3eca4a27b3972ff0857c843bdb4d8fcb02086da111ce5fd",
    ],
)

rpm(
    name = "libpciaccess-0__0.14-1.el8.x86_64",
    sha256 = "759386be8f49257266ac614432b762b8e486a89aac5d5f7a581a0330efb59c77",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libpciaccess-0.14-1.el8.x86_64.rpm"],
)

rpm(
    name = "libpkgconf-0__1.4.2-1.el8.aarch64",
    sha256 = "8f3e34df67e6c4a20bd7617f17d1199f0441a626fbab8059ddc6bf06c7ff4e78",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libpkgconf-1.4.2-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8f3e34df67e6c4a20bd7617f17d1199f0441a626fbab8059ddc6bf06c7ff4e78",
    ],
)

rpm(
    name = "libpkgconf-0__1.4.2-1.el8.x86_64",
    sha256 = "a76ff4cf270d2e38106a4bba1880c3a0899d186cd4e1986d7e97c01b934e13b7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libpkgconf-1.4.2-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/a76ff4cf270d2e38106a4bba1880c3a0899d186cd4e1986d7e97c01b934e13b7",
    ],
)

rpm(
    name = "libpmem-0__1.12.1-1.module_el8.8.0__plus__1231__plus__994ef5f7.x86_64",
    sha256 = "631f555b4816b73e9f0c5cbf76136d587a93ca03ba735747ac03fc6c6a73bad2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libpmem-1.12.1-1.module_el8.8.0+1231+994ef5f7.x86_64.rpm"],
)

rpm(
    name = "libpng-2__1.6.34-5.el8.aarch64",
    sha256 = "d7bd4e7a7ff4424266c0f6030bf444de0bea88d0540ff4caf4f7f6c2bac175f6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libpng-1.6.34-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/d7bd4e7a7ff4424266c0f6030bf444de0bea88d0540ff4caf4f7f6c2bac175f6",
    ],
)

rpm(
    name = "libpng-2__1.6.34-5.el8.x86_64",
    sha256 = "cc2f054cf7ef006faf0b179701838ff8632c3ac5f45a0199a13f9c237f632b82",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libpng-1.6.34-5.el8.x86_64.rpm"],
)

rpm(
    name = "libpwquality-0__1.4.4-5.el8.aarch64",
    sha256 = "01d7a24f607279d3ceddbee4bc1de275cbe5e496c3ebc8765d8c81acae45904c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libpwquality-1.4.4-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/01d7a24f607279d3ceddbee4bc1de275cbe5e496c3ebc8765d8c81acae45904c",
    ],
)

rpm(
    name = "libpwquality-0__1.4.4-6.el8.x86_64",
    sha256 = "3e4fa1636aee0d9896179d63ee7045fd7927cc6cdb43e30a943b873166533bb9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libpwquality-1.4.4-6.el8.x86_64.rpm"],
)

rpm(
    name = "librados2-1__12.2.7-9.el8.x86_64",
    sha256 = "26fc737517bc0b60150e662337000007299d7579376370bc9b907a7fe446a3f0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/librados2-12.2.7-9.el8.x86_64.rpm"],
)

rpm(
    name = "librbd1-1__12.2.7-9.el8.x86_64",
    sha256 = "f149e46f0f6a31f1af8bdc52385098c66c4c9fa538b5087ed98c357077463128",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/librbd1-12.2.7-9.el8.x86_64.rpm"],
)

rpm(
    name = "librdmacm-0__41.0-1.el8.aarch64",
    sha256 = "1e7580eca85aa66b7989d632fafb4a9d3f7aeb9c2294b699d37249bf8f5f5cad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/librdmacm-41.0-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/1e7580eca85aa66b7989d632fafb4a9d3f7aeb9c2294b699d37249bf8f5f5cad",
    ],
)

rpm(
    name = "librdmacm-0__46.0-1.el8.1.x86_64",
    sha256 = "fc1102e2e7439a32c35c042f4abfc14593e9dc567ce92bec30a931b487fe9e00",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/librdmacm-46.0-1.el8.1.x86_64.rpm"],
)

rpm(
    name = "libseccomp-0__2.5.2-1.el8.aarch64",
    sha256 = "2460f610a00c11b7070ff75d27fb22fab4b8d67c856da2ffb097cf3eff28f365",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libseccomp-2.5.2-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2460f610a00c11b7070ff75d27fb22fab4b8d67c856da2ffb097cf3eff28f365",
    ],
)

rpm(
    name = "libseccomp-0__2.5.2-1.el8.x86_64",
    sha256 = "4a6322832274a9507108719de9af48406ee0fcfc54c9906b9450e1ae231ede4b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libseccomp-2.5.2-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4a6322832274a9507108719de9af48406ee0fcfc54c9906b9450e1ae231ede4b",
    ],
)

rpm(
    name = "libselinux-0__2.9-6.el8.aarch64",
    sha256 = "f08e19d08afef99a50b1945a8562e65c84ebdbd9327f1cabdf5fe324dcb5550e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libselinux-2.9-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/f08e19d08afef99a50b1945a8562e65c84ebdbd9327f1cabdf5fe324dcb5550e",
    ],
)

rpm(
    name = "libselinux-0__2.9-8.el8.x86_64",
    sha256 = "67f7412ebbbc65ec953aa4e99489c04f821c9645fe048c3ee170040663535dc2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libselinux-2.9-8.el8.x86_64.rpm"],
)

rpm(
    name = "libselinux-utils-0__2.9-6.el8.aarch64",
    sha256 = "984094cc5b9d5854d4f96691ce81518fba3a28df1e82cfcab4df79dffb78cccd",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libselinux-utils-2.9-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/984094cc5b9d5854d4f96691ce81518fba3a28df1e82cfcab4df79dffb78cccd",
    ],
)

rpm(
    name = "libselinux-utils-0__2.9-8.el8.x86_64",
    sha256 = "d54bc5c131a6b41d8d69235dcb33ddb8a96df549f3da7b3020bf4dbdee65d71e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libselinux-utils-2.9-8.el8.x86_64.rpm"],
)

rpm(
    name = "libsemanage-0__2.9-9.el8.aarch64",
    sha256 = "95da090dc1010ed9dec6ee352ddb5293825d47844441ad908fca1c4852bb51e7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsemanage-2.9-9.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/95da090dc1010ed9dec6ee352ddb5293825d47844441ad908fca1c4852bb51e7",
    ],
)

rpm(
    name = "libsemanage-0__2.9-9.el8.x86_64",
    sha256 = "7b8293193b1dda6c408c04074c4b501faf37ff9e4a4b6cd1ca2cce81d5bb67bf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsemanage-2.9-9.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7b8293193b1dda6c408c04074c4b501faf37ff9e4a4b6cd1ca2cce81d5bb67bf",
    ],
)

rpm(
    name = "libsepol-0__2.9-3.el8.aarch64",
    sha256 = "e9d2e6252228076c270850b51b7205baed31c1c3c2ccdb9d3280c9b0de5d652a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsepol-2.9-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/e9d2e6252228076c270850b51b7205baed31c1c3c2ccdb9d3280c9b0de5d652a",
    ],
)

rpm(
    name = "libsepol-0__2.9-3.el8.x86_64",
    sha256 = "f91e372ffa25c4c82ae7e001565cf5ff73048c407083493555025fdb5fc4c14a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsepol-2.9-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f91e372ffa25c4c82ae7e001565cf5ff73048c407083493555025fdb5fc4c14a",
    ],
)

rpm(
    name = "libsigsegv-0__2.11-5.el8.aarch64",
    sha256 = "b377f4e8bcdc750ed0be94f97bdbfbb12843c458fbc1d5d507f92ad04aaf592b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsigsegv-2.11-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b377f4e8bcdc750ed0be94f97bdbfbb12843c458fbc1d5d507f92ad04aaf592b",
    ],
)

rpm(
    name = "libsigsegv-0__2.11-5.el8.x86_64",
    sha256 = "02d728cf74eb47005babeeab5ac68ca04472c643203a1faef0037b5f33710fe2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libsigsegv-2.11-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/02d728cf74eb47005babeeab5ac68ca04472c643203a1faef0037b5f33710fe2",
    ],
)

rpm(
    name = "libslirp-0__4.4.0-1.module_el8__plus__454__plus__d7ef4b8d.x86_64",
    sha256 = "3c1bc02909d89c0fe0f54d546b0118c95d301e1c3d1f2259f8d695a9313e1792",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libslirp-4.4.0-1.module_el8+454+d7ef4b8d.x86_64.rpm"],
)

rpm(
    name = "libsmartcols-0__2.32.1-38.el8.aarch64",
    sha256 = "9ac2b7da9ef39ad0ea119ff0f68f44bf1b6025aca227cc10d6df29e59b6fbe24",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsmartcols-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9ac2b7da9ef39ad0ea119ff0f68f44bf1b6025aca227cc10d6df29e59b6fbe24",
    ],
)

rpm(
    name = "libsmartcols-0__2.32.1-42.el8.x86_64",
    sha256 = "c5e5774fe5e32d79ade75bd50cc9b46aab6eaff1f4604d921b19cbf19bd5a8f2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libsmartcols-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "libsndfile-0__1.0.28-13.el8.x86_64",
    sha256 = "cde27a2771d9988eec260d71aac47907feac5cc84c61c0d32f547c33b3b8fe21",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libsndfile-1.0.28-13.el8.x86_64.rpm"],
)

rpm(
    name = "libss-0__1.45.6-5.el8.aarch64",
    sha256 = "68b0f490ced8811f8b25423c7bd2d81b26301317e4445705c4b280283a50b8e9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libss-1.45.6-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/68b0f490ced8811f8b25423c7bd2d81b26301317e4445705c4b280283a50b8e9",
    ],
)

rpm(
    name = "libss-0__1.45.6-5.el8.x86_64",
    sha256 = "f489f5eaaddbdedae046e4ddfe93947cdd636533ca8d35820bf5c92ae5dd3037",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libss-1.45.6-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/f489f5eaaddbdedae046e4ddfe93947cdd636533ca8d35820bf5c92ae5dd3037",
    ],
)

rpm(
    name = "libssh-0__0.9.6-3.el8.aarch64",
    sha256 = "4e7b5c73bf2ff1dc42904d96b86891ab3d2ccc27ba0e6d71de4984f9b1e71d65",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libssh-0.9.6-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4e7b5c73bf2ff1dc42904d96b86891ab3d2ccc27ba0e6d71de4984f9b1e71d65",
    ],
)

rpm(
    name = "libssh-0__0.9.6-6.el8.x86_64",
    sha256 = "7a7be0fa0aaa91578c344e708499b2bcb005c1d5c998fb341028e7c00060621e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libssh-0.9.6-6.el8.x86_64.rpm"],
)

rpm(
    name = "libssh-config-0__0.9.6-3.el8.aarch64",
    sha256 = "e9e954ba21bac58e3aebaf52bf824758fe4c2ad09d75171b3009a214bd52bbec",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libssh-config-0.9.6-3.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/e9e954ba21bac58e3aebaf52bf824758fe4c2ad09d75171b3009a214bd52bbec",
    ],
)

rpm(
    name = "libssh-config-0__0.9.6-6.el8.x86_64",
    sha256 = "1d31c42c9b71d3c2be20f057f71343b44fcb1e5f8d508ef4bdff5484e2c46976",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libssh-config-0.9.6-6.el8.noarch.rpm"],
)

rpm(
    name = "libsss_idmap-0__2.7.3-4.el8.aarch64",
    sha256 = "1b349a7f62cca5b60f634920b57c7770c0ae86e137f36ccf4ae1f9f95cd533b9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsss_idmap-2.7.3-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/1b349a7f62cca5b60f634920b57c7770c0ae86e137f36ccf4ae1f9f95cd533b9",
    ],
)

rpm(
    name = "libsss_idmap-0__2.9.1-1.el8.x86_64",
    sha256 = "a5edd466e3e3b153fd85d0facc4e9193526cc322cd8f4104e6fc839ac5eb99ca",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libsss_idmap-2.9.1-1.el8.x86_64.rpm"],
)

rpm(
    name = "libsss_nss_idmap-0__2.7.3-4.el8.aarch64",
    sha256 = "a5f7a789034c78edee700bc61c96c495bd67f8d403464dfeed681d29a28d1443",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libsss_nss_idmap-2.7.3-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a5f7a789034c78edee700bc61c96c495bd67f8d403464dfeed681d29a28d1443",
    ],
)

rpm(
    name = "libsss_nss_idmap-0__2.9.1-1.el8.x86_64",
    sha256 = "b2b0405e4087cfbc923853cae542e737f710264f5a863a5d309e4312759cf43f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libsss_nss_idmap-2.9.1-1.el8.x86_64.rpm"],
)

rpm(
    name = "libstdc__plus____plus__-0__8.5.0-15.el8.aarch64",
    sha256 = "91d6f78ddeab3c6df90479eeca76e77450605983619a54c01faaa8ede3767214",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libstdc++-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/91d6f78ddeab3c6df90479eeca76e77450605983619a54c01faaa8ede3767214",
    ],
)

rpm(
    name = "libstdc__plus____plus__-0__8.5.0-20.el8.x86_64",
    sha256 = "32cdd5b3201209de6d60e5329500bd3c2e66f9e750f29cd14f4656737acd154a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libstdc++-8.5.0-20.el8.x86_64.rpm"],
)

rpm(
    name = "libtasn1-0__4.13-3.el8.aarch64",
    sha256 = "3401ccfb7fd08c12578b6257b4dac7e94ba5f4cd70fc6a234fd90bb99d1bb108",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libtasn1-4.13-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3401ccfb7fd08c12578b6257b4dac7e94ba5f4cd70fc6a234fd90bb99d1bb108",
    ],
)

rpm(
    name = "libtasn1-0__4.13-4.el8.x86_64",
    sha256 = "ed93dccf7bf6d8540d825f0021b64164e006ef1c84ba9908d5c57cbb0aef2d8a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libtasn1-4.13-4.el8.x86_64.rpm"],
)

rpm(
    name = "libthai-0__0.1.27-2.el8.x86_64",
    sha256 = "91bbf9cd7d7ae62682a3d24a889512daef57c3c4b41866336c42af6361702fef",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libthai-0.1.27-2.el8.x86_64.rpm"],
)

rpm(
    name = "libtheora-1__1.1.1-21.el8.x86_64",
    sha256 = "c69987e10c401be766c0a73ade99478d69bad4a2b10688ce9e80295f3f9dae26",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libtheora-1.1.1-21.el8.x86_64.rpm"],
)

rpm(
    name = "libtirpc-0__1.1.4-8.el8.aarch64",
    sha256 = "95a8f001c48779fcd1ef52d7d633bb3f6abb27684c71dfeaa421e58ebb38ad33",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libtirpc-1.1.4-8.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/95a8f001c48779fcd1ef52d7d633bb3f6abb27684c71dfeaa421e58ebb38ad33",
    ],
)

rpm(
    name = "libtirpc-0__1.1.4-8.el8.x86_64",
    sha256 = "bcade31f01063824b3a3e77218caaedd16532413282978c437c82b81c2991e4e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libtirpc-1.1.4-8.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/bcade31f01063824b3a3e77218caaedd16532413282978c437c82b81c2991e4e",
    ],
)

rpm(
    name = "libtpms-0__0.9.1-1.20211126git1ff6fe1f43.module_el8.7.0__plus__1218__plus__f626c2ff.aarch64",
    sha256 = "3acd4597c1f45e6c9968da8b3b47f18dae4829b94814f61c64d1764696762fbd",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libtpms-0.9.1-1.20211126git1ff6fe1f43.module_el8.7.0+1218+f626c2ff.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3acd4597c1f45e6c9968da8b3b47f18dae4829b94814f61c64d1764696762fbd",
    ],
)

rpm(
    name = "libtpms-0__0.9.1-2.20211126git1ff6fe1f43.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "bbe281fb05b7ea80681369cc0033885af4add37a6eebcf729e7dc2fefe7ef7d1",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libtpms-0.9.1-2.20211126git1ff6fe1f43.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "libubsan-0__8.5.0-15.el8.aarch64",
    sha256 = "f17b6540d94e217baf503abe38e9ff08132872c7d35c15048e8891fe0cefedb1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libubsan-8.5.0-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/f17b6540d94e217baf503abe38e9ff08132872c7d35c15048e8891fe0cefedb1",
    ],
)

rpm(
    name = "libunistring-0__0.9.9-3.el8.aarch64",
    sha256 = "707429ccb3223628d55097a162cd0d3de1bd00b48800677c1099931b0f019e80",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libunistring-0.9.9-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/707429ccb3223628d55097a162cd0d3de1bd00b48800677c1099931b0f019e80",
    ],
)

rpm(
    name = "libunistring-0__0.9.9-3.el8.x86_64",
    sha256 = "20bb189228afa589141d9c9d4ed457729d13c11608305387602d0b00ed0a3093",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libunistring-0.9.9-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/20bb189228afa589141d9c9d4ed457729d13c11608305387602d0b00ed0a3093",
    ],
)

rpm(
    name = "libusbx-0__1.0.23-4.el8.aarch64",
    sha256 = "ae797d004f3cafb89773fcc8a3f0d6d046546b7cb3f9741be200d095c637706f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libusbx-1.0.23-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/ae797d004f3cafb89773fcc8a3f0d6d046546b7cb3f9741be200d095c637706f",
    ],
)

rpm(
    name = "libusbx-0__1.0.23-4.el8.x86_64",
    sha256 = "7e704756a93f07feec345a9748204e78994ce06a4667a2ef35b44964ff754306",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libusbx-1.0.23-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7e704756a93f07feec345a9748204e78994ce06a4667a2ef35b44964ff754306",
    ],
)

rpm(
    name = "libutempter-0__1.1.6-14.el8.aarch64",
    sha256 = "8f6d9839a758fdacfdb4b4b0731e8023b8bbb0b633bd32dbf21c2ce85a933a8a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libutempter-1.1.6-14.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8f6d9839a758fdacfdb4b4b0731e8023b8bbb0b633bd32dbf21c2ce85a933a8a",
    ],
)

rpm(
    name = "libutempter-0__1.1.6-14.el8.x86_64",
    sha256 = "c8c54c56bff9ca416c3ba6bccac483fb66c81a53d93a19420088715018ed5169",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libutempter-1.1.6-14.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/c8c54c56bff9ca416c3ba6bccac483fb66c81a53d93a19420088715018ed5169",
    ],
)

rpm(
    name = "libuuid-0__2.32.1-38.el8.aarch64",
    sha256 = "acc2cea2e85fabdee5ce88ec9ce46aa03b1e7651940705dae89fe076428e7193",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libuuid-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/acc2cea2e85fabdee5ce88ec9ce46aa03b1e7651940705dae89fe076428e7193",
    ],
)

rpm(
    name = "libuuid-0__2.32.1-42.el8.x86_64",
    sha256 = "369b6a9ec29f00a36a1fa5a6224715777f4fbb54b4958189572d1a725e10e1a7",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libuuid-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "libverto-0__0.3.2-2.el8.aarch64",
    sha256 = "1a8478fe342782d95f29253a2845bdb3e88ced25b5e6b029cecc52a43df1932b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libverto-0.3.2-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/1a8478fe342782d95f29253a2845bdb3e88ced25b5e6b029cecc52a43df1932b",
    ],
)

rpm(
    name = "libverto-0__0.3.2-2.el8.x86_64",
    sha256 = "96b8ea32c5e9b3275788525ecbf35fd6ac1ae137754a2857503776512d4db58a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libverto-0.3.2-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/96b8ea32c5e9b3275788525ecbf35fd6ac1ae137754a2857503776512d4db58a",
    ],
)

rpm(
    name = "libvirt-client-0__8.0.0-2.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "fd736b99c4910c52e7bffd34532ece859819ea1e4ad2dc616a554fe630eb8d3a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libvirt-client-8.0.0-2.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/fd736b99c4910c52e7bffd34532ece859819ea1e4ad2dc616a554fe630eb8d3a",
    ],
)

rpm(
    name = "libvirt-daemon-0__8.0.0-2.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "734437ae41c5c705ab1da476ee9521a57124261727c16f398c8a1bdd8be44922",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libvirt-daemon-8.0.0-2.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/734437ae41c5c705ab1da476ee9521a57124261727c16f398c8a1bdd8be44922",
    ],
)

rpm(
    name = "libvirt-daemon-driver-qemu-0__8.0.0-2.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "77a8a98da56eeaf7cdfe11bdc6b01e42f9eea16b0c04f1abfe7fbafe216a4a66",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libvirt-daemon-driver-qemu-8.0.0-2.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/77a8a98da56eeaf7cdfe11bdc6b01e42f9eea16b0c04f1abfe7fbafe216a4a66",
    ],
)

rpm(
    name = "libvirt-devel-0__8.0.0-2.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "aa47408e4c1499bc03442a6873444ea7d4cd3b62bf59118ff30da2e9db29369f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libvirt-devel-8.0.0-2.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/aa47408e4c1499bc03442a6873444ea7d4cd3b62bf59118ff30da2e9db29369f",
    ],
)

rpm(
    name = "libvirt-libs-0__8.0.0-2.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "7feb59b591f71783999b5ec9256ef61da19e5e3cdaae46bec162781cdab4b074",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libvirt-libs-8.0.0-2.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7feb59b591f71783999b5ec9256ef61da19e5e3cdaae46bec162781cdab4b074",
    ],
)

rpm(
    name = "libvisual-1__0.4.0-25.el8.x86_64",
    sha256 = "3a95e5f7b43313656f7b5a4798315355457cca2b120a8cfb1883628160fd77c8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libvisual-0.4.0-25.el8.x86_64.rpm"],
)

rpm(
    name = "libvorbis-1__1.3.6-2.el8.x86_64",
    sha256 = "5349766076fcd168287f116b023caa93d451243663b00a5ca5991f74067bf7af",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libvorbis-1.3.6-2.el8.x86_64.rpm"],
)

rpm(
    name = "libwayland-client-0__1.21.0-1.el8.x86_64",
    sha256 = "bf1b7055999f0961fcd23fb29d07678c9d6bf1f9c57f42b06b6237b84a3f5aa9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-client-1.21.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "libwayland-cursor-0__1.21.0-1.el8.x86_64",
    sha256 = "ed32158e75e2f3decf8089f5de5dbdf21915c881293a795f5e77cfba3d3af403",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-cursor-1.21.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "libwayland-egl-0__1.21.0-1.el8.x86_64",
    sha256 = "aa7b2f9d27c75f0844bdbcd02c325aafb79756f1b422fd8d6c229afd4c9c79ad",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-egl-1.21.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "libwayland-server-0__1.21.0-1.el8.x86_64",
    sha256 = "86b1b725f8b725706cbad9d44d0c896a52b249b3e7b556814128dabc03cef023",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libwayland-server-1.21.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "libxcb-0__1.13.1-1.el8.x86_64",
    sha256 = "0221e6e3671c2bd130e9519a7b352404b7e510584b4707d38e1a733e19c7f74f",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libxcb-1.13.1-1.el8.x86_64.rpm"],
)

rpm(
    name = "libxcrypt-0__4.1.1-6.el8.aarch64",
    sha256 = "4948420ee35381c71c619fab4b8deabfa93c04e7c5729620b02e4382a50550ad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libxcrypt-4.1.1-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4948420ee35381c71c619fab4b8deabfa93c04e7c5729620b02e4382a50550ad",
    ],
)

rpm(
    name = "libxcrypt-0__4.1.1-6.el8.x86_64",
    sha256 = "645853feb85c921d979cb9cf9109663528429eda63cf5a1e31fe578d3d7e713a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libxcrypt-4.1.1-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/645853feb85c921d979cb9cf9109663528429eda63cf5a1e31fe578d3d7e713a",
    ],
)

rpm(
    name = "libxcrypt-devel-0__4.1.1-6.el8.aarch64",
    sha256 = "c561c433a3c295f5d7a49e79a43e4cc96094ed15bcc2fa271bf31f5a6deeacd1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libxcrypt-devel-4.1.1-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c561c433a3c295f5d7a49e79a43e4cc96094ed15bcc2fa271bf31f5a6deeacd1",
    ],
)

rpm(
    name = "libxcrypt-devel-0__4.1.1-6.el8.x86_64",
    sha256 = "6d84082741a4b7f1a98872a7ee8f12efca835b3dbcb15401aa1b5eccfc674bd4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libxcrypt-devel-4.1.1-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/6d84082741a4b7f1a98872a7ee8f12efca835b3dbcb15401aa1b5eccfc674bd4",
    ],
)

rpm(
    name = "libxcrypt-static-0__4.1.1-6.el8.aarch64",
    sha256 = "a8268856b30e6700f0f67651a6a43449b1e5fccaff512a95280d305468e44dfc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/PowerTools/aarch64/os/Packages/libxcrypt-static-4.1.1-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/a8268856b30e6700f0f67651a6a43449b1e5fccaff512a95280d305468e44dfc",
    ],
)

rpm(
    name = "libxcrypt-static-0__4.1.1-6.el8.x86_64",
    sha256 = "599cded5497aa6155c409321f3bb88b7a820341e1d502eac80bf17447283a29b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/PowerTools/x86_64/os/Packages/libxcrypt-static-4.1.1-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/599cded5497aa6155c409321f3bb88b7a820341e1d502eac80bf17447283a29b",
    ],
)

rpm(
    name = "libxkbcommon-0__0.9.1-1.el8.aarch64",
    sha256 = "3aca03c788af2ecf8ef39421f246769d7ef7f37260ee9421fc68c1d1cc913600",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/libxkbcommon-0.9.1-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3aca03c788af2ecf8ef39421f246769d7ef7f37260ee9421fc68c1d1cc913600",
    ],
)

rpm(
    name = "libxkbcommon-0__0.9.1-1.el8.x86_64",
    sha256 = "e03d462995326a4477dcebc8c12eae3c1776ce2f095617ace253c0c492c89082",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libxkbcommon-0.9.1-1.el8.x86_64.rpm"],
)

rpm(
    name = "libxml2-0__2.9.7-15.el8.aarch64",
    sha256 = "8e1f021974ac791a367b10b8bf196d43eec3978ed3cc24f75b6f7abfc7089054",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libxml2-2.9.7-15.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/8e1f021974ac791a367b10b8bf196d43eec3978ed3cc24f75b6f7abfc7089054",
    ],
)

rpm(
    name = "libxml2-0__2.9.7-16.el8.x86_64",
    sha256 = "65d7bffcef57650a109b44992b4b15fa554ce865a0eb21d5ede2aa39f62d4e00",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/libxml2-2.9.7-16.el8.x86_64.rpm"],
)

rpm(
    name = "libxshmfence-0__1.3-2.el8.x86_64",
    sha256 = "bfb818e14cfa05d800f1131366ee8fd0c30ab0c735470c870e62dabb7d3f1073",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/libxshmfence-1.3-2.el8.x86_64.rpm"],
)

rpm(
    name = "libzstd-0__1.4.4-1.el8.aarch64",
    sha256 = "b560a8a185100a7c80e6c32f69ba65ce17004156f7218cf183249b15c13295cc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/libzstd-1.4.4-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b560a8a185100a7c80e6c32f69ba65ce17004156f7218cf183249b15c13295cc",
    ],
)

rpm(
    name = "libzstd-0__1.4.4-1.el8.x86_64",
    sha256 = "7c2dc6044f13fe4ae04a4c1620da822a6be591b5129bf68ba98a3d8e9092f83b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/libzstd-1.4.4-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/7c2dc6044f13fe4ae04a4c1620da822a6be591b5129bf68ba98a3d8e9092f83b",
    ],
)

rpm(
    name = "llvm-compat-libs-0__15.0.7-1.module_el8__plus__399__plus__c714bfd2.x86_64",
    sha256 = "663d9ff67673b0abafe861f14570a97d9287e5e83718a417c7e5470fb06b7daa",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/llvm-compat-libs-15.0.7-1.module_el8+399+c714bfd2.x86_64.rpm"],
)

rpm(
    name = "llvm-libs-0__15.0.7-1.module_el8.8.0__plus__1258__plus__af79b238.x86_64",
    sha256 = "260a2fb6c03e2bf0f3ddcc62cb12ad8185e2220e285a1983e610882a2f2debe7",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/llvm-libs-15.0.7-1.module_el8.8.0+1258+af79b238.x86_64.rpm"],
)

rpm(
    name = "lua-libs-0__5.3.4-12.el8.aarch64",
    sha256 = "2ef9801e4453de316429be284d4f6cb12f4d7662e7c6224dbf2341e3cfc5fab6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/lua-libs-5.3.4-12.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2ef9801e4453de316429be284d4f6cb12f4d7662e7c6224dbf2341e3cfc5fab6",
    ],
)

rpm(
    name = "lua-libs-0__5.3.4-12.el8.x86_64",
    sha256 = "0268af0ee5754fb90fcf71b00fb737f1bf5b3c54c9ff312f13df8c2201311cfe",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/lua-libs-5.3.4-12.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/0268af0ee5754fb90fcf71b00fb737f1bf5b3c54c9ff312f13df8c2201311cfe",
    ],
)

rpm(
    name = "lvm2-8__2.03.14-9.el8.x86_64",
    sha256 = "0cdb3eec6f29415f64e2106d3c27a2797a5c462c4913fa3fc471ae50761144f8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/lvm2-2.03.14-9.el8.x86_64.rpm"],
)

rpm(
    name = "lvm2-libs-8__2.03.14-9.el8.x86_64",
    sha256 = "2a3692b8f3783dac84b87bddaf9a90c07211cd469851cef8c766f47625513c51",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/lvm2-libs-2.03.14-9.el8.x86_64.rpm"],
)

rpm(
    name = "lz4-libs-0__1.8.3-3.el8_4.aarch64",
    sha256 = "db9075646bed11355faf8b425c655a40a55436715a9f401f60e205ddd66edfeb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/lz4-libs-1.8.3-3.el8_4.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/db9075646bed11355faf8b425c655a40a55436715a9f401f60e205ddd66edfeb",
    ],
)

rpm(
    name = "lz4-libs-0__1.8.3-3.el8_4.x86_64",
    sha256 = "8ecac05bb0ec99f91026f2361f7443b9be3272582193a7836884ec473bf8f423",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/lz4-libs-1.8.3-3.el8_4.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/8ecac05bb0ec99f91026f2361f7443b9be3272582193a7836884ec473bf8f423",
    ],
)

rpm(
    name = "lzo-0__2.08-14.el8.aarch64",
    sha256 = "6809839757bd05082ca1b8d23eac617898eda3ce34844a0d31b0a030c8cc6653",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/lzo-2.08-14.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/6809839757bd05082ca1b8d23eac617898eda3ce34844a0d31b0a030c8cc6653",
    ],
)

rpm(
    name = "lzo-0__2.08-14.el8.x86_64",
    sha256 = "5c68635cb03533a38d4a42f6547c21a1d5f9952351bb01f3cf865d2621a6e634",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/lzo-2.08-14.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5c68635cb03533a38d4a42f6547c21a1d5f9952351bb01f3cf865d2621a6e634",
    ],
)

rpm(
    name = "lzop-0__1.03-20.el8.aarch64",
    sha256 = "003b309833a1ed94ad97ed62f04c2fcda4a20fb8b7b5933c36459974f4e4986c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/lzop-1.03-20.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/003b309833a1ed94ad97ed62f04c2fcda4a20fb8b7b5933c36459974f4e4986c",
    ],
)

rpm(
    name = "lzop-0__1.03-20.el8.x86_64",
    sha256 = "04eae61018a5be7656be832797016f97cd7b6e19d56f58cb658cd3969dedf2b0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/lzop-1.03-20.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/04eae61018a5be7656be832797016f97cd7b6e19d56f58cb658cd3969dedf2b0",
    ],
)

rpm(
    name = "mesa-dri-drivers-0__23.1.0-1.el8.x86_64",
    sha256 = "c13b64b5159f927f391b3f8021db3066b968338e1afa765f1573367a9953c39a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-dri-drivers-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mesa-filesystem-0__23.1.0-1.el8.x86_64",
    sha256 = "7e1d6fda4aa501b1cafd70c47581d07b694c28d50f8239c3a2612ad04817cd2e",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-filesystem-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mesa-libEGL-0__23.1.0-1.el8.x86_64",
    sha256 = "28d1116ddb7f5d46da13a682547dace617e9a78673c483f7ec331190a7732e51",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libEGL-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mesa-libGL-0__23.1.0-1.el8.x86_64",
    sha256 = "071e1f0ed7f3d51c11e8f4fcf0eb23cb0b8165179826e483c4bae400fc504c49",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libGL-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mesa-libgbm-0__23.1.0-1.el8.x86_64",
    sha256 = "15fa07467c2a1d33c68e8907028cc5370263a9990ed3e090caafa2abff0fb241",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libgbm-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mesa-libglapi-0__23.1.0-1.el8.x86_64",
    sha256 = "098afe962eeece35005abf857fcbfe07b07d6e3efeb44ccc94a451e378aa056b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/mesa-libglapi-23.1.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "mpfr-0__3.1.6-1.el8.aarch64",
    sha256 = "97a998a1b93c21bf070f9a9a1dbb525234b00fccedfe67de8967cd9ec7132eb1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/mpfr-3.1.6-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/97a998a1b93c21bf070f9a9a1dbb525234b00fccedfe67de8967cd9ec7132eb1",
    ],
)

rpm(
    name = "mpfr-0__3.1.6-1.el8.x86_64",
    sha256 = "e7f0c34f83c1ec2abb22951779e84d51e234c4ba0a05252e4ffd8917461891a5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/mpfr-3.1.6-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/e7f0c34f83c1ec2abb22951779e84d51e234c4ba0a05252e4ffd8917461891a5",
    ],
)

rpm(
    name = "ncurses-0__6.1-9.20180224.el8.x86_64",
    sha256 = "fc22ce73243e2f926e72967c28de57beabfa3720e51248b9a39e40207fbc6c8a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ncurses-6.1-9.20180224.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/fc22ce73243e2f926e72967c28de57beabfa3720e51248b9a39e40207fbc6c8a",
    ],
)

rpm(
    name = "ncurses-base-0__6.1-9.20180224.el8.aarch64",
    sha256 = "41716536ea16798238ac89fbc3041b3f9dc80f9a64ea4b19d6e67ad2c909269a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/ncurses-base-6.1-9.20180224.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/41716536ea16798238ac89fbc3041b3f9dc80f9a64ea4b19d6e67ad2c909269a",
    ],
)

rpm(
    name = "ncurses-base-0__6.1-9.20180224.el8.x86_64",
    sha256 = "41716536ea16798238ac89fbc3041b3f9dc80f9a64ea4b19d6e67ad2c909269a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ncurses-base-6.1-9.20180224.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/41716536ea16798238ac89fbc3041b3f9dc80f9a64ea4b19d6e67ad2c909269a",
    ],
)

rpm(
    name = "ncurses-libs-0__6.1-9.20180224.el8.aarch64",
    sha256 = "b938a6facc8d8a3de12b369871738bb531c822b1ec5212501b06bcaaf6cd25fa",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/ncurses-libs-6.1-9.20180224.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b938a6facc8d8a3de12b369871738bb531c822b1ec5212501b06bcaaf6cd25fa",
    ],
)

rpm(
    name = "ncurses-libs-0__6.1-9.20180224.el8.x86_64",
    sha256 = "54609dd070a57a14a6103f0c06bea99bb0a4e568d1fbc6a22b8ba67c954d90bf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/ncurses-libs-6.1-9.20180224.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/54609dd070a57a14a6103f0c06bea99bb0a4e568d1fbc6a22b8ba67c954d90bf",
    ],
)

rpm(
    name = "ndctl-libs-0__71.1-7.el8.x86_64",
    sha256 = "ba39e90b8712ebe37044bcfd6e7c57af7bc527f90e2b969fcdedf058fc02c15c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/ndctl-libs-71.1-7.el8.x86_64.rpm"],
)

rpm(
    name = "nettle-0__3.4.1-7.el8.aarch64",
    sha256 = "5441222132ae52cd31063e9b9e3bb40f2e5711dfb0c84315b4aec2907278a075",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/nettle-3.4.1-7.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5441222132ae52cd31063e9b9e3bb40f2e5711dfb0c84315b4aec2907278a075",
    ],
)

rpm(
    name = "nettle-0__3.4.1-7.el8.x86_64",
    sha256 = "fe9a848502c595e0b7acc699d69c24b9c5ad0ac58a0b3933cd228f3633de31cb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/nettle-3.4.1-7.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/fe9a848502c595e0b7acc699d69c24b9c5ad0ac58a0b3933cd228f3633de31cb",
    ],
)

rpm(
    name = "nftables-1__0.9.3-26.el8.aarch64",
    sha256 = "22cacdb52fb6a31659789b5190f8e6db27ca1dddd9b67f3c6b2c1db917ef882f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/nftables-0.9.3-26.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/22cacdb52fb6a31659789b5190f8e6db27ca1dddd9b67f3c6b2c1db917ef882f",
    ],
)

rpm(
    name = "nftables-1__0.9.3-26.el8.x86_64",
    sha256 = "813d7c361e77b394f6f05fb29983c3ee6c2dd2e8fe8b857e2bdb6b9914e0c129",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/nftables-0.9.3-26.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/813d7c361e77b394f6f05fb29983c3ee6c2dd2e8fe8b857e2bdb6b9914e0c129",
    ],
)

rpm(
    name = "nmap-ncat-2__7.70-8.el8.aarch64",
    sha256 = "dc83ec9685aa03079f7348f56b616f112a6c8829e7fdcf88f8355065e72c187d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/nmap-ncat-7.70-8.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/dc83ec9685aa03079f7348f56b616f112a6c8829e7fdcf88f8355065e72c187d",
    ],
)

rpm(
    name = "nmap-ncat-2__7.92-1.el8.x86_64",
    sha256 = "3b4f2b2727b7c8cf71f27253c5a3d3c866e0b6419f10919d9fffb7cd7348909b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nmap-ncat-7.92-1.el8.x86_64.rpm"],
)

rpm(
    name = "npth-0__1.5-4.el8.x86_64",
    sha256 = "168ab5dbc86b836b8742b2e63eee51d074f1d790728e3d30b0c59fff93cf1d8d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/npth-1.5-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/168ab5dbc86b836b8742b2e63eee51d074f1d790728e3d30b0c59fff93cf1d8d",
    ],
)

rpm(
    name = "nspr-0__4.35.0-1.el8.x86_64",
    sha256 = "9287f8994b6b2b08323c29ee1c0441e69b8e7d30bc072ee551c396d23ddd613c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nspr-4.35.0-1.el8.x86_64.rpm"],
)

rpm(
    name = "nss-0__3.79.0-11.el8.x86_64",
    sha256 = "1ba281d9663abaa34b33688e90c35a59b6cd37c7becc38fc44c8082c8e6984c0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nss-3.79.0-11.el8.x86_64.rpm"],
)

rpm(
    name = "nss-softokn-0__3.79.0-11.el8.x86_64",
    sha256 = "1abeaf4e7ccd187aa052f8ba5d8f8ad2af64c70b832a0ed8441982294bd53d65",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nss-softokn-3.79.0-11.el8.x86_64.rpm"],
)

rpm(
    name = "nss-softokn-freebl-0__3.79.0-11.el8.x86_64",
    sha256 = "d0dbbe47f00a6ae230d852943daee7baee4b6cfc008f71c801d71014db1e6a38",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nss-softokn-freebl-3.79.0-11.el8.x86_64.rpm"],
)

rpm(
    name = "nss-sysinit-0__3.79.0-11.el8.x86_64",
    sha256 = "dea622b426e9d72f40dc06f1974826f31a85b00501df47c3b73e17c7aa3eb612",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nss-sysinit-3.79.0-11.el8.x86_64.rpm"],
)

rpm(
    name = "nss-util-0__3.79.0-11.el8.x86_64",
    sha256 = "399751a49c513de5a78312f475cee7cb825588509ad4cd2741393d3a8258a3a5",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/nss-util-3.79.0-11.el8.x86_64.rpm"],
)

rpm(
    name = "numactl-libs-0__2.0.12-13.el8.aarch64",
    sha256 = "5f2d7a8db99ad318df35e60d43e5e7f462294c00ffa3d7c24207c16bfd3a6619",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/numactl-libs-2.0.12-13.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5f2d7a8db99ad318df35e60d43e5e7f462294c00ffa3d7c24207c16bfd3a6619",
    ],
)

rpm(
    name = "numactl-libs-0__2.0.12-13.el8.x86_64",
    sha256 = "b7b71ba34b3af893dc0acbb9d2228a2307da849d38e1c0007bd3d64f456640af",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/numactl-libs-2.0.12-13.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/b7b71ba34b3af893dc0acbb9d2228a2307da849d38e1c0007bd3d64f456640af",
    ],
)

rpm(
    name = "numad-0__0.5-26.20150602git.el8.aarch64",
    sha256 = "5b580f1a1c2193384a7c4c5171200d1e6f4ca6a19e6a01a327a75d03db916484",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/numad-0.5-26.20150602git.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5b580f1a1c2193384a7c4c5171200d1e6f4ca6a19e6a01a327a75d03db916484",
    ],
)

rpm(
    name = "numad-0__0.5-26.20150602git.el8.x86_64",
    sha256 = "5d975c08273b1629683275c32f16e52ca8e37e6836598e211092c915d38878bf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/numad-0.5-26.20150602git.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5d975c08273b1629683275c32f16e52ca8e37e6836598e211092c915d38878bf",
    ],
)

rpm(
    name = "openldap-0__2.4.46-18.el8.aarch64",
    sha256 = "254200cc7c35fefbeab3de24c36f94dec10f913ea2199b6d6c769f0fc8a10546",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/openldap-2.4.46-18.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/254200cc7c35fefbeab3de24c36f94dec10f913ea2199b6d6c769f0fc8a10546",
    ],
)

rpm(
    name = "openldap-0__2.4.46-18.el8.x86_64",
    sha256 = "95327d6c83a370a12c125767403496435d20a94b70ee395eabfc356270d2ada9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/openldap-2.4.46-18.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/95327d6c83a370a12c125767403496435d20a94b70ee395eabfc356270d2ada9",
    ],
)

rpm(
    name = "openssl-libs-1__1.1.1k-7.el8.aarch64",
    sha256 = "7fe60edf1f59b0eb61c5bf3f298cb247be14ddb713291fec770914f7df6ec17d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/openssl-libs-1.1.1k-7.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/7fe60edf1f59b0eb61c5bf3f298cb247be14ddb713291fec770914f7df6ec17d",
    ],
)

rpm(
    name = "openssl-libs-1__1.1.1k-9.el8.x86_64",
    sha256 = "fd158669c52fd8df76e2902eee3719b866e3129dc19ba8c96e2439b9b892a778",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/openssl-libs-1.1.1k-9.el8.x86_64.rpm"],
)

rpm(
    name = "opus-0__1.3-0.4.beta.el8.x86_64",
    sha256 = "00512c56e8931eb0ab52de91d0272f00bf904d6f2042b580115edd7eb4a42df2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/opus-1.3-0.4.beta.el8.x86_64.rpm"],
)

rpm(
    name = "orc-0__0.4.28-3.el8.x86_64",
    sha256 = "7552ad64b02a15a3b91524f9858afeb228ef45148204539ad33524f7d7bc5c67",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/orc-0.4.28-3.el8.x86_64.rpm"],
)

rpm(
    name = "p11-kit-0__0.23.22-1.el8.aarch64",
    sha256 = "cfee10a5ca5613896a4e84716aa393094fd97c09f2c585c9aa921e6063783867",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/p11-kit-0.23.22-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/cfee10a5ca5613896a4e84716aa393094fd97c09f2c585c9aa921e6063783867",
    ],
)

rpm(
    name = "p11-kit-0__0.23.22-1.el8.x86_64",
    sha256 = "6a67c8721fe24af25ec56c6aae956a190d8463e46efed45adfbbd800086550c7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/p11-kit-0.23.22-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/6a67c8721fe24af25ec56c6aae956a190d8463e46efed45adfbbd800086550c7",
    ],
)

rpm(
    name = "p11-kit-trust-0__0.23.22-1.el8.aarch64",
    sha256 = "3fc181bf0f076fef283fdb63d36e7b84930c8822fa67dff6e1ccea9987d6dbf3",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/p11-kit-trust-0.23.22-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3fc181bf0f076fef283fdb63d36e7b84930c8822fa67dff6e1ccea9987d6dbf3",
    ],
)

rpm(
    name = "p11-kit-trust-0__0.23.22-1.el8.x86_64",
    sha256 = "d218619a4859e002fe677703bc1767986314cd196ae2ac397ed057f3bec36516",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/p11-kit-trust-0.23.22-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/d218619a4859e002fe677703bc1767986314cd196ae2ac397ed057f3bec36516",
    ],
)

rpm(
    name = "pam-0__1.3.1-22.el8.aarch64",
    sha256 = "b900edf1f702460be4a6b2e402e02887068fe9172b88256660b8c20b89a772d5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pam-1.3.1-22.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b900edf1f702460be4a6b2e402e02887068fe9172b88256660b8c20b89a772d5",
    ],
)

rpm(
    name = "pam-0__1.3.1-27.el8.x86_64",
    sha256 = "e5b67dd48fa73c7cb122c88077e525e49bf7db9042dfede96db4f1986b75a219",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/pam-1.3.1-27.el8.x86_64.rpm"],
)

rpm(
    name = "pango-0__1.42.4-8.el8.x86_64",
    sha256 = "1e74c391edf2f383b5c236e65ddd15bcf83883975b8d08b70808d2e14916d496",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/pango-1.42.4-8.el8.x86_64.rpm"],
)

rpm(
    name = "paratype-pt-sans-caption-fonts-0__20141121-6.el8.x86_64",
    sha256 = "f17e0b44a5f57eb55fb9bb4c3fa118c075256569fc11965f9ca047ef9179f385",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/paratype-pt-sans-caption-fonts-20141121-6.el8.noarch.rpm"],
)

rpm(
    name = "passt-0__0.git.2022_08_29.60ffc5b-1.el8.aarch64",
    sha256 = "909bb0b287fb9e29cee43e8703302bf118763b5cee85a4c21085a34efbd48e37",
    urls = [
        "https://download.copr.fedorainfracloud.org/results/sbrivio/passt/centos-stream-8-aarch64/04776284-passt/passt-0.git.2022_08_29.60ffc5b-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/909bb0b287fb9e29cee43e8703302bf118763b5cee85a4c21085a34efbd48e37",
    ],
)

rpm(
    name = "passt-0__0.git.2022_08_29.60ffc5b-1.el8.x86_64",
    sha256 = "e87c53d771dfa8c46a034c895706d4db09c40e594e0fc363005e652be2201bbd",
    urls = ["http://css-devops.sh.intel.com/download/kubevirt-repo/04776284-passt/passt-0.git.2022_08_29.60ffc5b-1.el8.x86_64.rpm"],
)

rpm(
    name = "pcre-0__8.42-6.el8.aarch64",
    sha256 = "5591faa4f51dc97067292938883b771d75ec2b3a749ec956eddc0408e689c369",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pcre-8.42-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5591faa4f51dc97067292938883b771d75ec2b3a749ec956eddc0408e689c369",
    ],
)

rpm(
    name = "pcre-0__8.42-6.el8.x86_64",
    sha256 = "876e9e99b0e50cb2752499045bafa903dd29e5c491d112daacef1ae16f614dad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pcre-8.42-6.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/876e9e99b0e50cb2752499045bafa903dd29e5c491d112daacef1ae16f614dad",
    ],
)

rpm(
    name = "pcre2-0__10.32-3.el8.aarch64",
    sha256 = "b8e4367f28a53ec70a6b8a329a5bda886374eddde5f55c9467e1783d4158b5d1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pcre2-10.32-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/b8e4367f28a53ec70a6b8a329a5bda886374eddde5f55c9467e1783d4158b5d1",
    ],
)

rpm(
    name = "pcre2-0__10.32-3.el8.x86_64",
    sha256 = "2f865747024d26b91d5a9f2f35dd1b04e1039d64e772d0371b437145cd7beceb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pcre2-10.32-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/2f865747024d26b91d5a9f2f35dd1b04e1039d64e772d0371b437145cd7beceb",
    ],
)

rpm(
    name = "perl-Carp-0__1.42-396.el8.x86_64",
    sha256 = "d03b9f4b9848e3a88d62bcf6e536d659c325b2dc03b2136be7342b5fe5e2b6a9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Carp-1.42-396.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/d03b9f4b9848e3a88d62bcf6e536d659c325b2dc03b2136be7342b5fe5e2b6a9",
    ],
)

rpm(
    name = "perl-Encode-4__2.97-3.el8.x86_64",
    sha256 = "d2b0e4b28a5aac754f6caa119d5479a64816f93c059e0ac564e46391264e2234",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Encode-2.97-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/d2b0e4b28a5aac754f6caa119d5479a64816f93c059e0ac564e46391264e2234",
    ],
)

rpm(
    name = "perl-Errno-0__1.28-421.el8.x86_64",
    sha256 = "8d9b26f17e427dc497032b1897b9296c4ca37fa1b96d9c459b42516d72ef06a1",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Errno-1.28-421.el8.x86_64.rpm"],
)

rpm(
    name = "perl-Exporter-0__5.72-396.el8.x86_64",
    sha256 = "7edc503f5a919c489b651757095d8031982d530cc88088fdaeb743188364e9b0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Exporter-5.72-396.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/7edc503f5a919c489b651757095d8031982d530cc88088fdaeb743188364e9b0",
    ],
)

rpm(
    name = "perl-File-Path-0__2.15-2.el8.x86_64",
    sha256 = "e83928bd4552ecdf8e71d283e2358c7eccd006d284ba31fbc9c89e407989fd60",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-File-Path-2.15-2.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/e83928bd4552ecdf8e71d283e2358c7eccd006d284ba31fbc9c89e407989fd60",
    ],
)

rpm(
    name = "perl-File-Temp-0__0.230.600-1.el8.x86_64",
    sha256 = "e269f7d33abbb790311ffa95fa7df9766cac8bf31ace24fce6ed732ba0db19ae",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-File-Temp-0.230.600-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/e269f7d33abbb790311ffa95fa7df9766cac8bf31ace24fce6ed732ba0db19ae",
    ],
)

rpm(
    name = "perl-Getopt-Long-1__2.50-4.el8.x86_64",
    sha256 = "da4c6daa0d5406bc967cc89b02a69689491f42c543aceea1a31136f0f1a8d991",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Getopt-Long-2.50-4.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/da4c6daa0d5406bc967cc89b02a69689491f42c543aceea1a31136f0f1a8d991",
    ],
)

rpm(
    name = "perl-HTTP-Tiny-0__0.074-1.el8.x86_64",
    sha256 = "a1af93a1b62e8ca05b7597d5749a2b3d28735a86928f0432064fec61db1ff844",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-HTTP-Tiny-0.074-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/a1af93a1b62e8ca05b7597d5749a2b3d28735a86928f0432064fec61db1ff844",
    ],
)

rpm(
    name = "perl-IO-0__1.38-422.el8.x86_64",
    sha256 = "a9526a5ed20cfbecb4c3aa28ee399add4f316df348e6e1a54540bbeedc5e4d02",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/perl-IO-1.38-422.el8.x86_64.rpm"],
)

rpm(
    name = "perl-MIME-Base64-0__3.15-396.el8.x86_64",
    sha256 = "5642297bf32bb174173917dd10fd2a3a2ef7277c599f76c0669c5c448f10bdaf",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-MIME-Base64-3.15-396.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5642297bf32bb174173917dd10fd2a3a2ef7277c599f76c0669c5c448f10bdaf",
    ],
)

rpm(
    name = "perl-PathTools-0__3.74-1.el8.x86_64",
    sha256 = "512245f7741790b36b03562469b9262f4dedfb8862dfa2d42e64598bb205d4c9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-PathTools-3.74-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/512245f7741790b36b03562469b9262f4dedfb8862dfa2d42e64598bb205d4c9",
    ],
)

rpm(
    name = "perl-Pod-Escapes-1__1.07-395.el8.x86_64",
    sha256 = "545cd23ad8e4f71a5109551093668fd4b5e1a50d6a60364ce0f04f64eecd99d1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Pod-Escapes-1.07-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/545cd23ad8e4f71a5109551093668fd4b5e1a50d6a60364ce0f04f64eecd99d1",
    ],
)

rpm(
    name = "perl-Pod-Perldoc-0__3.28-396.el8.x86_64",
    sha256 = "0225dc3999e3d7b1bb57186a2fc93c98bd1e4e08e062fb51c966e1f2a2c91bb4",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Pod-Perldoc-3.28-396.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/0225dc3999e3d7b1bb57186a2fc93c98bd1e4e08e062fb51c966e1f2a2c91bb4",
    ],
)

rpm(
    name = "perl-Pod-Simple-1__3.35-395.el8.x86_64",
    sha256 = "51c3ee5d824bdde0a8faa10c99841c2590c0c26edfb17125aa97945a688c83ed",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Pod-Simple-3.35-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/51c3ee5d824bdde0a8faa10c99841c2590c0c26edfb17125aa97945a688c83ed",
    ],
)

rpm(
    name = "perl-Pod-Usage-4__1.69-395.el8.x86_64",
    sha256 = "794f970f498af07b37f914c19ad5dedc6b6c2f89d343af9dd1768d17232555de",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Pod-Usage-1.69-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/794f970f498af07b37f914c19ad5dedc6b6c2f89d343af9dd1768d17232555de",
    ],
)

rpm(
    name = "perl-Scalar-List-Utils-3__1.49-2.el8.x86_64",
    sha256 = "3db0d05ca5ba00981312f3a3ddcbabf466c2f1fc639cbf29482bb2cd952df456",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Scalar-List-Utils-1.49-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/3db0d05ca5ba00981312f3a3ddcbabf466c2f1fc639cbf29482bb2cd952df456",
    ],
)

rpm(
    name = "perl-Socket-4__2.027-3.el8.x86_64",
    sha256 = "de138a9614191af63b9603cf0912d4ffd9bd9e5b122c2d0a78ae0eac009a602f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Socket-2.027-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/de138a9614191af63b9603cf0912d4ffd9bd9e5b122c2d0a78ae0eac009a602f",
    ],
)

rpm(
    name = "perl-Storable-1__3.11-3.el8.x86_64",
    sha256 = "0c3007b68a37325866aaade4ae076232bca15e268f66c3d3b3a6d236bb85e1e9",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Storable-3.11-3.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/0c3007b68a37325866aaade4ae076232bca15e268f66c3d3b3a6d236bb85e1e9",
    ],
)

rpm(
    name = "perl-Sys-Guestfs-1__1.44.0-5.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "8e01d8cca7a1297980a36db1b56835cce506c08450d12b7b21e11bfa58ad22bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/perl-Sys-Guestfs-1.44.0-5.module_el8.6.0+1087+b42c8331.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/8e01d8cca7a1297980a36db1b56835cce506c08450d12b7b21e11bfa58ad22bb",
    ],
)

rpm(
    name = "perl-Term-ANSIColor-0__4.06-396.el8.x86_64",
    sha256 = "f4e3607f242bbca7ec2379822ca961860e6d9c276da51c6e2dfd17a29469ec78",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Term-ANSIColor-4.06-396.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/f4e3607f242bbca7ec2379822ca961860e6d9c276da51c6e2dfd17a29469ec78",
    ],
)

rpm(
    name = "perl-Term-Cap-0__1.17-395.el8.x86_64",
    sha256 = "6bbb721dd2c411c85c75f7477b14c54c776d78ee9b93557615e919ef47577440",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Term-Cap-1.17-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/6bbb721dd2c411c85c75f7477b14c54c776d78ee9b93557615e919ef47577440",
    ],
)

rpm(
    name = "perl-Text-ParseWords-0__3.30-395.el8.x86_64",
    sha256 = "2975de6545b4ca7907ae368a1716c531764e4afccbf27fb0a694d90e983c38e2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Text-ParseWords-3.30-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/2975de6545b4ca7907ae368a1716c531764e4afccbf27fb0a694d90e983c38e2",
    ],
)

rpm(
    name = "perl-Text-Tabs__plus__Wrap-0__2013.0523-395.el8.x86_64",
    sha256 = "7e50a5d0f2fbd8c95375f72f5772c7731186e999a447121b8247f448b065a4ef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Text-Tabs+Wrap-2013.0523-395.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/7e50a5d0f2fbd8c95375f72f5772c7731186e999a447121b8247f448b065a4ef",
    ],
)

rpm(
    name = "perl-Time-Local-1__1.280-1.el8.x86_64",
    sha256 = "1edcf2b441ddf21417ef2b33e1ab2a30900758819335d7fabafe3b16bb3eab62",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Time-Local-1.280-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/1edcf2b441ddf21417ef2b33e1ab2a30900758819335d7fabafe3b16bb3eab62",
    ],
)

rpm(
    name = "perl-Unicode-Normalize-0__1.25-396.el8.x86_64",
    sha256 = "99678a57c35343d8b2e2a502efcccc17bde3e40d97d7d2c5f988af8d3aa166d0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-Unicode-Normalize-1.25-396.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/99678a57c35343d8b2e2a502efcccc17bde3e40d97d7d2c5f988af8d3aa166d0",
    ],
)

rpm(
    name = "perl-constant-0__1.33-396.el8.x86_64",
    sha256 = "7559c097998db5e5d14dab1a7a1637a5749e9dab234ca68d17c9c21f8cfbf8d6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-constant-1.33-396.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/7559c097998db5e5d14dab1a7a1637a5749e9dab234ca68d17c9c21f8cfbf8d6",
    ],
)

rpm(
    name = "perl-hivex-0__1.3.18-23.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "6124d8091ab4cbd532d653aebce175caf1c30a68fd16156679aaa9979247f2b4",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/perl-hivex-1.3.18-23.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "perl-interpreter-4__5.26.3-421.el8.x86_64",
    sha256 = "4618427acf4bcfa66ec91cccf995d938e1ed0f87b1088d7d948a9993a6d15b29",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/perl-interpreter-5.26.3-421.el8.x86_64.rpm"],
)

rpm(
    name = "perl-libintl-perl-0__1.29-2.el8.x86_64",
    sha256 = "8b8c1ce375e1d8dd73f905e99bd452243ec194dd707a36fa5bdea7a252165c60",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/perl-libintl-perl-1.29-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/8b8c1ce375e1d8dd73f905e99bd452243ec194dd707a36fa5bdea7a252165c60",
    ],
)

rpm(
    name = "perl-libs-4__5.26.3-421.el8.x86_64",
    sha256 = "d3a5510385cd4b2d53d70942e4fb4c149917aac2ce2df881c28ae2afdcd26619",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/perl-libs-5.26.3-421.el8.x86_64.rpm"],
)

rpm(
    name = "perl-macros-4__5.26.3-422.el8.x86_64",
    sha256 = "4d166f749d161537ef6ff7b16b64f7e21a1ac8ae34c2c3999850a6c91c591eec",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/perl-macros-5.26.3-422.el8.x86_64.rpm"],
)

rpm(
    name = "perl-parent-1__0.237-1.el8.x86_64",
    sha256 = "f5e73bbd776a2426a796971d8d38664f2e94898479fb76947dccdd28cf9fe1d0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-parent-0.237-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/f5e73bbd776a2426a796971d8d38664f2e94898479fb76947dccdd28cf9fe1d0",
    ],
)

rpm(
    name = "perl-podlators-0__4.11-1.el8.x86_64",
    sha256 = "78d17ed089151e7fa3d1a3cdbbac8ca3b1b5c484fae5ba025642cc9107991037",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-podlators-4.11-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/78d17ed089151e7fa3d1a3cdbbac8ca3b1b5c484fae5ba025642cc9107991037",
    ],
)

rpm(
    name = "perl-threads-1__2.21-2.el8.x86_64",
    sha256 = "2e3da17b1c1685edea9c52bdaa0d77c019d6144c765fc6b3b1c783d98f634f96",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-threads-2.21-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/2e3da17b1c1685edea9c52bdaa0d77c019d6144c765fc6b3b1c783d98f634f96",
    ],
)

rpm(
    name = "perl-threads-shared-0__1.58-2.el8.x86_64",
    sha256 = "b4a14dc0e3550da946d7ca65e54d19fc805e30c6c3dbf5ef3fc077d1d94e6d71",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/perl-threads-shared-1.58-2.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/b4a14dc0e3550da946d7ca65e54d19fc805e30c6c3dbf5ef3fc077d1d94e6d71",
    ],
)

rpm(
    name = "pixman-0__0.38.4-2.el8.aarch64",
    sha256 = "038eba8224034c5090cd08184c68a25ff8037dee804ad3eae0109a1cf4096078",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/pixman-0.38.4-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/038eba8224034c5090cd08184c68a25ff8037dee804ad3eae0109a1cf4096078",
    ],
)

rpm(
    name = "pixman-0__0.38.4-2.el8.x86_64",
    sha256 = "e496740940bd0b4d6f6537feaaffff57580624f6629c736c7f5e415259dc6cbe",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/pixman-0.38.4-2.el8.x86_64.rpm"],
)

rpm(
    name = "pkgconf-0__1.4.2-1.el8.aarch64",
    sha256 = "9a2c046a45d46e681f417f3b438d4bb5a21e1b93deacb59d906b8aa08a7535ad",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pkgconf-1.4.2-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9a2c046a45d46e681f417f3b438d4bb5a21e1b93deacb59d906b8aa08a7535ad",
    ],
)

rpm(
    name = "pkgconf-0__1.4.2-1.el8.x86_64",
    sha256 = "dd08de48d25573f0a8492cf858ce8c37abb10eb560975d9df0e45a7f91b3b41d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pkgconf-1.4.2-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/dd08de48d25573f0a8492cf858ce8c37abb10eb560975d9df0e45a7f91b3b41d",
    ],
)

rpm(
    name = "pkgconf-m4-0__1.4.2-1.el8.aarch64",
    sha256 = "56187f25e8ae7c2a5ce228d13c6e93b9c6a701960d61dff8ad720a8879b6059e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pkgconf-m4-1.4.2-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/56187f25e8ae7c2a5ce228d13c6e93b9c6a701960d61dff8ad720a8879b6059e",
    ],
)

rpm(
    name = "pkgconf-m4-0__1.4.2-1.el8.x86_64",
    sha256 = "56187f25e8ae7c2a5ce228d13c6e93b9c6a701960d61dff8ad720a8879b6059e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pkgconf-m4-1.4.2-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/56187f25e8ae7c2a5ce228d13c6e93b9c6a701960d61dff8ad720a8879b6059e",
    ],
)

rpm(
    name = "pkgconf-pkg-config-0__1.4.2-1.el8.aarch64",
    sha256 = "aadca7b635ac2b30c3463a4edfe38eaee2c6064181cb090694619186747f3950",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/pkgconf-pkg-config-1.4.2-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/aadca7b635ac2b30c3463a4edfe38eaee2c6064181cb090694619186747f3950",
    ],
)

rpm(
    name = "pkgconf-pkg-config-0__1.4.2-1.el8.x86_64",
    sha256 = "bf5319e42dbe96c24cd64c974b17f422847cc658c4461d9d61cfe76ad76e9c67",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/pkgconf-pkg-config-1.4.2-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/bf5319e42dbe96c24cd64c974b17f422847cc658c4461d9d61cfe76ad76e9c67",
    ],
)

rpm(
    name = "platform-python-0__3.6.8-47.el8.aarch64",
    sha256 = "43ffa547514ccad75bc69b6fdc402cc133234b33da4a62ddacc3c51ebf738fd0",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/platform-python-3.6.8-47.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/43ffa547514ccad75bc69b6fdc402cc133234b33da4a62ddacc3c51ebf738fd0",
    ],
)

rpm(
    name = "platform-python-0__3.6.8-52.el8.x86_64",
    sha256 = "f20afdf28a1e5b68a95831b5b95f40a9fa1fa2b716acf32311102b0043b710c6",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/platform-python-3.6.8-52.el8.x86_64.rpm"],
)

rpm(
    name = "platform-python-pip-0__9.0.3-22.el8.aarch64",
    sha256 = "f66c6d22a96febc3907247a6350097cceeaf77abcb628574052dfdb1a4411607",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/platform-python-pip-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/f66c6d22a96febc3907247a6350097cceeaf77abcb628574052dfdb1a4411607",
    ],
)

rpm(
    name = "platform-python-pip-0__9.0.3-22.el8.x86_64",
    sha256 = "f66c6d22a96febc3907247a6350097cceeaf77abcb628574052dfdb1a4411607",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/platform-python-pip-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/f66c6d22a96febc3907247a6350097cceeaf77abcb628574052dfdb1a4411607",
    ],
)

rpm(
    name = "platform-python-setuptools-0__39.2.0-6.el8.aarch64",
    sha256 = "946ba273a3a3b6fdf140f3c03112918c0a556a5871c477f5dbbb98600e6ca557",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/platform-python-setuptools-39.2.0-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/946ba273a3a3b6fdf140f3c03112918c0a556a5871c477f5dbbb98600e6ca557",
    ],
)

rpm(
    name = "platform-python-setuptools-0__39.2.0-7.el8.x86_64",
    sha256 = "e7b5b0904239cf0eaed16cbec17825fee9465c700de385a1ceb87db671c4bce7",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/platform-python-setuptools-39.2.0-7.el8.noarch.rpm"],
)

rpm(
    name = "policycoreutils-0__2.9-20.el8.aarch64",
    sha256 = "c9b9b0ebb76076878a19bda6c762ae165c5ce7b2d5109b5be391c60015d8a7dc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/policycoreutils-2.9-20.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c9b9b0ebb76076878a19bda6c762ae165c5ce7b2d5109b5be391c60015d8a7dc",
    ],
)

rpm(
    name = "policycoreutils-0__2.9-24.el8.x86_64",
    sha256 = "eda91a9bfd329a3c276d3e491a899e518ac515f6e6bcf91ca510bef23f702b6c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/policycoreutils-2.9-24.el8.x86_64.rpm"],
)

rpm(
    name = "polkit-0__0.115-13.0.1.el8.2.aarch64",
    sha256 = "eef4d3b177ff36c7f1781fcb456bef44169484a29f5931f268486f15933e4b24",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/polkit-0.115-13.0.1.el8.2.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/eef4d3b177ff36c7f1781fcb456bef44169484a29f5931f268486f15933e4b24",
    ],
)

rpm(
    name = "polkit-0__0.115-15.el8.x86_64",
    sha256 = "fdc1438a4df1da3268ed436585472a10975265a00f460a73255f5d7845e2954a",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/polkit-0.115-15.el8.x86_64.rpm"],
)

rpm(
    name = "polkit-libs-0__0.115-13.0.1.el8.2.aarch64",
    sha256 = "dc74d77dfeb155b2708820c9a1d5cbb2c4c29de2c3a1cb76d0987e6bbbf40c9a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/polkit-libs-0.115-13.0.1.el8.2.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/dc74d77dfeb155b2708820c9a1d5cbb2c4c29de2c3a1cb76d0987e6bbbf40c9a",
    ],
)

rpm(
    name = "polkit-libs-0__0.115-15.el8.x86_64",
    sha256 = "476bfef20880e6d109e49a4ab79b0ee39b003ac74d39080781ae38ef8bc66c8b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/polkit-libs-0.115-15.el8.x86_64.rpm"],
)

rpm(
    name = "polkit-pkla-compat-0__0.1-12.el8.aarch64",
    sha256 = "d25d562fe77f391458903ebf0d9078b6d38af6d9ced39d902b9afc7e717d2234",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/polkit-pkla-compat-0.1-12.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/d25d562fe77f391458903ebf0d9078b6d38af6d9ced39d902b9afc7e717d2234",
    ],
)

rpm(
    name = "polkit-pkla-compat-0__0.1-12.el8.x86_64",
    sha256 = "e7ee4b6d6456cb7da0332f5a6fb8a7c47df977bcf616f12f0455413765367e89",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/polkit-pkla-compat-0.1-12.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/e7ee4b6d6456cb7da0332f5a6fb8a7c47df977bcf616f12f0455413765367e89",
    ],
)

rpm(
    name = "popt-0__1.18-1.el8.aarch64",
    sha256 = "2596d6cba62bf9594e4fbb07df31e2459eb6fca8e479fd0be2b32c7561e9ad95",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/popt-1.18-1.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/2596d6cba62bf9594e4fbb07df31e2459eb6fca8e479fd0be2b32c7561e9ad95",
    ],
)

rpm(
    name = "popt-0__1.18-1.el8.x86_64",
    sha256 = "3fc009f00388e66befab79be548ff3c7aa80ca70bd7f183d22f59137d8e2c2ae",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/popt-1.18-1.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/3fc009f00388e66befab79be548ff3c7aa80ca70bd7f183d22f59137d8e2c2ae",
    ],
)

rpm(
    name = "procps-ng-0__3.3.15-13.el8.x86_64",
    sha256 = "39051bbbd940f4f43c675e0812ac9f4f1b8a4c30b9f326f3febcd2b8517c18c9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/procps-ng-3.3.15-13.el8.x86_64.rpm"],
)

rpm(
    name = "procps-ng-0__3.3.15-9.el8.aarch64",
    sha256 = "9811ac732f8266ec4ff97b314abb403279805e735740ec039c57d37cd4b82333",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/procps-ng-3.3.15-9.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9811ac732f8266ec4ff97b314abb403279805e735740ec039c57d37cd4b82333",
    ],
)

rpm(
    name = "psmisc-0__23.1-5.el8.aarch64",
    sha256 = "e6852f9e715174c037c57ef9ee45a6318775968322c244185fc51f40a10dbdcc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/psmisc-23.1-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/e6852f9e715174c037c57ef9ee45a6318775968322c244185fc51f40a10dbdcc",
    ],
)

rpm(
    name = "psmisc-0__23.1-5.el8.x86_64",
    sha256 = "9d433d8c058e59c891c0852b95b3b87795ea30a85889c77ba0b12f965517d626",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/psmisc-23.1-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/9d433d8c058e59c891c0852b95b3b87795ea30a85889c77ba0b12f965517d626",
    ],
)

rpm(
    name = "pulseaudio-libs-0__14.0-4.el8.x86_64",
    sha256 = "9d314844e8948e641f7d972b91ac4165412cc13ac7e83122caa3527884705338",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/pulseaudio-libs-14.0-4.el8.x86_64.rpm"],
)

rpm(
    name = "python3-libs-0__3.6.8-47.el8.aarch64",
    sha256 = "1ec95b8b8d4e226558d193bd46d3e928c143e41e5c0403a8868f872f7a7d2ad1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/python3-libs-3.6.8-47.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/1ec95b8b8d4e226558d193bd46d3e928c143e41e5c0403a8868f872f7a7d2ad1",
    ],
)

rpm(
    name = "python3-libs-0__3.6.8-52.el8.x86_64",
    sha256 = "65738ae03333aff15bc026d82f54186e2a6c8adee9f4d238d39e1799562a9458",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/python3-libs-3.6.8-52.el8.x86_64.rpm"],
)

rpm(
    name = "python3-pip-0__9.0.3-22.el8.aarch64",
    sha256 = "ba83ca7667c98d265da7334a3ef7f786fbb48c85e32cdec11979778594750953",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/python3-pip-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/ba83ca7667c98d265da7334a3ef7f786fbb48c85e32cdec11979778594750953",
    ],
)

rpm(
    name = "python3-pip-0__9.0.3-22.el8.x86_64",
    sha256 = "ba83ca7667c98d265da7334a3ef7f786fbb48c85e32cdec11979778594750953",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/python3-pip-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/ba83ca7667c98d265da7334a3ef7f786fbb48c85e32cdec11979778594750953",
    ],
)

rpm(
    name = "python3-pip-wheel-0__9.0.3-22.el8.aarch64",
    sha256 = "772093492e290af496c3c8d4cf1d83d3288af49c4f0eb550f9c2489f96ecd89d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/python3-pip-wheel-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/772093492e290af496c3c8d4cf1d83d3288af49c4f0eb550f9c2489f96ecd89d",
    ],
)

rpm(
    name = "python3-pip-wheel-0__9.0.3-22.el8.x86_64",
    sha256 = "772093492e290af496c3c8d4cf1d83d3288af49c4f0eb550f9c2489f96ecd89d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/python3-pip-wheel-9.0.3-22.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/772093492e290af496c3c8d4cf1d83d3288af49c4f0eb550f9c2489f96ecd89d",
    ],
)

rpm(
    name = "python3-setuptools-0__39.2.0-6.el8.aarch64",
    sha256 = "c6f27b6e01d80e756408e3c1451e4af00e7d02da0aa24402644c0785118753fe",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/python3-setuptools-39.2.0-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/c6f27b6e01d80e756408e3c1451e4af00e7d02da0aa24402644c0785118753fe",
    ],
)

rpm(
    name = "python3-setuptools-0__39.2.0-7.el8.x86_64",
    sha256 = "3fae8820cd3576f265297ed0b90b65a656910c8a3531681eccf5b4e2e8884e03",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/python3-setuptools-39.2.0-7.el8.noarch.rpm"],
)

rpm(
    name = "python3-setuptools-wheel-0__39.2.0-6.el8.aarch64",
    sha256 = "b19bd4f106ce301ee21c860183cc1c2ef9c09bdf495059bdf16e8d8ccc71bbe8",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/python3-setuptools-wheel-39.2.0-6.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/b19bd4f106ce301ee21c860183cc1c2ef9c09bdf495059bdf16e8d8ccc71bbe8",
    ],
)

rpm(
    name = "python3-setuptools-wheel-0__39.2.0-7.el8.x86_64",
    sha256 = "202a208dc9390ef3fd1528100fb80059970cfcc2698b5aaa8896f710d30b61e0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/python3-setuptools-wheel-39.2.0-7.el8.noarch.rpm"],
)

rpm(
    name = "python36-0__3.6.8-38.module_el8.5.0__plus__895__plus__a459eca8.aarch64",
    sha256 = "ab1d26bddf3f97decf17ac4a12c545add80be07bba1d7a1519481df24151e390",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/python36-3.6.8-38.module_el8.5.0+895+a459eca8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/ab1d26bddf3f97decf17ac4a12c545add80be07bba1d7a1519481df24151e390",
    ],
)

rpm(
    name = "python36-0__3.6.8-38.module_el8.5.0__plus__895__plus__a459eca8.x86_64",
    sha256 = "002b3672de2744c3f97ad8776d012952c058f9213a0cf8e01f7f9b8651b3e6af",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/python36-3.6.8-38.module_el8.5.0+895+a459eca8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/002b3672de2744c3f97ad8776d012952c058f9213a0cf8e01f7f9b8651b3e6af",
    ],
)

rpm(
    name = "qemu-img-15__6.2.0-5.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "af3133d3653a921ca543317bc1bc327fc3c853abfe71d7c8343af4bd8885cfaa",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/qemu-img-6.2.0-5.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/af3133d3653a921ca543317bc1bc327fc3c853abfe71d7c8343af4bd8885cfaa",
    ],
)

rpm(
    name = "qemu-kvm-common-15__6.2.0-5.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "e51be1ba77f9e5436483e748bea7dd141c26f5557764cbebbece8f175034a2ab",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/qemu-kvm-common-6.2.0-5.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/e51be1ba77f9e5436483e748bea7dd141c26f5557764cbebbece8f175034a2ab",
    ],
)

rpm(
    name = "qemu-kvm-core-15__6.2.0-5.module_el8.6.0__plus__1087__plus__b42c8331.aarch64",
    sha256 = "28b10ff340e60d70ded17ce0b06dfe19962cf9f5c8e0c04d50bbd0becaeb99f2",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/qemu-kvm-core-6.2.0-5.module_el8.6.0+1087+b42c8331.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/28b10ff340e60d70ded17ce0b06dfe19962cf9f5c8e0c04d50bbd0becaeb99f2",
    ],
)

rpm(
    name = "readline-0__7.0-10.el8.aarch64",
    sha256 = "ef74f2c65ed0e38dd021177d6e59fcdf7fb8de8929b7544b7a6f0709eff6562c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/readline-7.0-10.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/ef74f2c65ed0e38dd021177d6e59fcdf7fb8de8929b7544b7a6f0709eff6562c",
    ],
)

rpm(
    name = "readline-0__7.0-10.el8.x86_64",
    sha256 = "fea868a7d82a7b6f392260ed4afb472dc4428fd71eab1456319f423a845b5084",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/readline-7.0-10.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/fea868a7d82a7b6f392260ed4afb472dc4428fd71eab1456319f423a845b5084",
    ],
)

rpm(
    name = "rpm-0__4.14.3-23.el8.aarch64",
    sha256 = "d803f082920abc401f44b7220ce96f6f2b070b06dcfe6b5c34573b8c7bcc5267",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/rpm-4.14.3-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/d803f082920abc401f44b7220ce96f6f2b070b06dcfe6b5c34573b8c7bcc5267",
    ],
)

rpm(
    name = "rpm-0__4.14.3-26.el8.x86_64",
    sha256 = "453a504eb33a2d1fd337a8465bc251a6623bab10b82af866f300374c32519588",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/rpm-4.14.3-26.el8.x86_64.rpm"],
)

rpm(
    name = "rpm-libs-0__4.14.3-23.el8.aarch64",
    sha256 = "26fdda368fc8c50c774cebd9ddf4786ced58d8ee9b12e5ce57113205d147f0a1",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/rpm-libs-4.14.3-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/26fdda368fc8c50c774cebd9ddf4786ced58d8ee9b12e5ce57113205d147f0a1",
    ],
)

rpm(
    name = "rpm-libs-0__4.14.3-26.el8.x86_64",
    sha256 = "7b62e239e21f1e885e7b6e51ce4ad9ff3e4f3bf2a00f1c5b6bb4bd4eee97ebe3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/rpm-libs-4.14.3-26.el8.x86_64.rpm"],
)

rpm(
    name = "rpm-plugin-selinux-0__4.14.3-23.el8.aarch64",
    sha256 = "66c8e46bde5c784c083c7e674f72edb493394c9dedf59e7b40600968f083ca5c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/rpm-plugin-selinux-4.14.3-23.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/66c8e46bde5c784c083c7e674f72edb493394c9dedf59e7b40600968f083ca5c",
    ],
)

rpm(
    name = "rpm-plugin-selinux-0__4.14.3-26.el8.x86_64",
    sha256 = "decce24ccc350e080c454f2f672d35d343bb4251930c84fa698f38f0110a6a64",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/rpm-plugin-selinux-4.14.3-26.el8.x86_64.rpm"],
)

rpm(
    name = "seabios-0__1.15.0-1.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "4d421d4139e7ad6e5a2ec8be8f347bc16a871571525d6b8d2ae251436d4bd89f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/seabios-1.15.0-1.module_el8.6.0+1087+b42c8331.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/4d421d4139e7ad6e5a2ec8be8f347bc16a871571525d6b8d2ae251436d4bd89f",
    ],
)

rpm(
    name = "seabios-bin-0__1.15.0-1.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "3c8d058cabbdad4e9780aab2f3770c8162bfc28f837dd6036690497b82101d3f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/seabios-bin-1.15.0-1.module_el8.6.0+1087+b42c8331.noarch.rpm",
        "https://storage.googleapis.com/builddeps/3c8d058cabbdad4e9780aab2f3770c8162bfc28f837dd6036690497b82101d3f",
    ],
)

rpm(
    name = "seavgabios-bin-0__1.15.0-1.module_el8.6.0__plus__1087__plus__b42c8331.x86_64",
    sha256 = "34d9c5e00e88a00e8be874470dc2f1460f7957335fd0081936e8a17fcf66605c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/seavgabios-bin-1.15.0-1.module_el8.6.0+1087+b42c8331.noarch.rpm",
        "https://storage.googleapis.com/builddeps/34d9c5e00e88a00e8be874470dc2f1460f7957335fd0081936e8a17fcf66605c",
    ],
)

rpm(
    name = "sed-0__4.5-5.el8.aarch64",
    sha256 = "806550c684c46a58a455953223fafbacc343e35e488d436bf963844944a33861",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/sed-4.5-5.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/806550c684c46a58a455953223fafbacc343e35e488d436bf963844944a33861",
    ],
)

rpm(
    name = "sed-0__4.5-5.el8.x86_64",
    sha256 = "5a09d6d967d12580c7e6ab92db35bcafd3426d6121ec60c78f54e3cd4961cd26",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/sed-4.5-5.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/5a09d6d967d12580c7e6ab92db35bcafd3426d6121ec60c78f54e3cd4961cd26",
    ],
)

rpm(
    name = "selinux-policy-0__3.14.3-108.el8.aarch64",
    sha256 = "84b49fd4b40c26b7dcfd05fcfe9b249af48798c45749e6b25dd6e2017eb1547b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/selinux-policy-3.14.3-108.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/84b49fd4b40c26b7dcfd05fcfe9b249af48798c45749e6b25dd6e2017eb1547b",
    ],
)

rpm(
    name = "selinux-policy-0__3.14.3-123.el8.x86_64",
    sha256 = "78dd9a0ddc105549ba9920e284f7ea49d61b75fd7525a2a5e5b21d4559525e94",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/selinux-policy-3.14.3-123.el8.noarch.rpm"],
)

rpm(
    name = "selinux-policy-targeted-0__3.14.3-108.el8.aarch64",
    sha256 = "f41687f7f44a1f7bb0bfa60325e9cf9036970dc74cf650f94c8fb6b3baf3036a",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/selinux-policy-targeted-3.14.3-108.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/f41687f7f44a1f7bb0bfa60325e9cf9036970dc74cf650f94c8fb6b3baf3036a",
    ],
)

rpm(
    name = "selinux-policy-targeted-0__3.14.3-123.el8.x86_64",
    sha256 = "a3717876979434057fd6683c3a0be027303859990e06e84325d09a75364f1431",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/selinux-policy-targeted-3.14.3-123.el8.noarch.rpm"],
)

rpm(
    name = "setup-0__2.12.2-7.el8.aarch64",
    sha256 = "0e5bdfebabb44848a9f37d2cc02a8a6a099b1c4c1644f4940718e55ce5b95464",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/setup-2.12.2-7.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/0e5bdfebabb44848a9f37d2cc02a8a6a099b1c4c1644f4940718e55ce5b95464",
    ],
)

rpm(
    name = "setup-0__2.12.2-9.el8.x86_64",
    sha256 = "0a0696aebfadbbeb229445c0828a83be763460d6af6a552b3bd533acde011644",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/setup-2.12.2-9.el8.noarch.rpm"],
)

rpm(
    name = "shadow-utils-2__4.6-17.el8.aarch64",
    sha256 = "c2ed285e2a2495b33e926c57e1917114c7898f2f4536866d643f206780a699af",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/shadow-utils-4.6-17.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c2ed285e2a2495b33e926c57e1917114c7898f2f4536866d643f206780a699af",
    ],
)

rpm(
    name = "shadow-utils-2__4.6-18.el8.x86_64",
    sha256 = "5672d972a440ad3f64fa803dbbe27211aa7190674a0a864a1e42ac4b44ed1b0c",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/shadow-utils-4.6-18.el8.x86_64.rpm"],
)

rpm(
    name = "snappy-0__1.1.8-3.el8.aarch64",
    sha256 = "4731985b22fc7b733ff89be6c1423396f27c94a78bb09fc89be5c2200bee893c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/snappy-1.1.8-3.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4731985b22fc7b733ff89be6c1423396f27c94a78bb09fc89be5c2200bee893c",
    ],
)

rpm(
    name = "snappy-0__1.1.8-3.el8.x86_64",
    sha256 = "839c62cd7fc7e152decded6f28c80b5f7b8f34a5e319057867b38b26512cee67",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/snappy-1.1.8-3.el8.x86_64.rpm"],
)

rpm(
    name = "spice-server-0__0.14.3-4.el8.x86_64",
    sha256 = "1dea958ebe37b61062fd7313234b41628ad68de34dd1b615df3f42b7975ecb6b",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/spice-server-0.14.3-4.el8.x86_64.rpm"],
)

rpm(
    name = "sqlite-libs-0__3.26.0-16.el8.aarch64",
    sha256 = "dd9b9c781a443d2712cdc5268dfa54116dfcf6c659df4e6da593f65e17ea0f60",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/sqlite-libs-3.26.0-16.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/dd9b9c781a443d2712cdc5268dfa54116dfcf6c659df4e6da593f65e17ea0f60",
    ],
)

rpm(
    name = "sqlite-libs-0__3.26.0-18.el8.x86_64",
    sha256 = "7deb758335ac59329d233e3f9f108562290a149940328f2499aca8c520039c71",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/sqlite-libs-3.26.0-18.el8.x86_64.rpm"],
)

rpm(
    name = "sssd-client-0__2.7.3-4.el8.aarch64",
    sha256 = "3be860b5a9682f3374fad6a70597e023b9c7198434765d17cd76cd61639bb997",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/sssd-client-2.7.3-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3be860b5a9682f3374fad6a70597e023b9c7198434765d17cd76cd61639bb997",
    ],
)

rpm(
    name = "sssd-client-0__2.9.1-1.el8.x86_64",
    sha256 = "1dfc3e36e407cfaa70c7d6d29f931e962f41f04488a16a155e897158e66ed9a2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/sssd-client-2.9.1-1.el8.x86_64.rpm"],
)

rpm(
    name = "swtpm-0__0.7.0-4.20211109gitb79fd91.module_el8.7.0__plus__1218__plus__f626c2ff.aarch64",
    sha256 = "c4acfc0bd76c4dd286887e20aac02c9bdb83b2357012641b32605207ad619ff6",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/swtpm-0.7.0-4.20211109gitb79fd91.module_el8.7.0+1218+f626c2ff.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c4acfc0bd76c4dd286887e20aac02c9bdb83b2357012641b32605207ad619ff6",
    ],
)

rpm(
    name = "swtpm-0__0.7.0-4.20211109gitb79fd91.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "d02ce5e3636d25a5781845385c425dc4e657f46afa2d410df7d29bfdb08fd5d5",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/swtpm-0.7.0-4.20211109gitb79fd91.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "swtpm-libs-0__0.7.0-4.20211109gitb79fd91.module_el8.7.0__plus__1218__plus__f626c2ff.aarch64",
    sha256 = "31d1177c9161063114580f26614cd64d90b3dc1f9163b317f52cb9d99dc128d5",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/swtpm-libs-0.7.0-4.20211109gitb79fd91.module_el8.7.0+1218+f626c2ff.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/31d1177c9161063114580f26614cd64d90b3dc1f9163b317f52cb9d99dc128d5",
    ],
)

rpm(
    name = "swtpm-libs-0__0.7.0-4.20211109gitb79fd91.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "62a70952fa6bdababf7260c1cc3b235813433c026060b6ad6c3d74bcd7c11c74",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/swtpm-libs-0.7.0-4.20211109gitb79fd91.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "swtpm-tools-0__0.7.0-4.20211109gitb79fd91.module_el8.7.0__plus__1218__plus__f626c2ff.aarch64",
    sha256 = "9677ebd929255a1a4b10a8ea834f7b4771ba3243ed12c37c1ee5e0cf7ab82938",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/swtpm-tools-0.7.0-4.20211109gitb79fd91.module_el8.7.0+1218+f626c2ff.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9677ebd929255a1a4b10a8ea834f7b4771ba3243ed12c37c1ee5e0cf7ab82938",
    ],
)

rpm(
    name = "swtpm-tools-0__0.7.0-4.20211109gitb79fd91.module_el8__plus__310__plus__72016cce.x86_64",
    sha256 = "b891f92181c414f78926642bff14e0a5bcc24c57b9ee54f9c40a3be23362ebf4",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/swtpm-tools-0.7.0-4.20211109gitb79fd91.module_el8+310+72016cce.x86_64.rpm"],
)

rpm(
    name = "systemd-0__239-67.el8.aarch64",
    sha256 = "5a2637fb3502c931e9c48402773df76912d7cb8bf0c9b6a55531f3db3ac9842e",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/systemd-239-67.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/5a2637fb3502c931e9c48402773df76912d7cb8bf0c9b6a55531f3db3ac9842e",
    ],
)

rpm(
    name = "systemd-0__239-75.el8.x86_64",
    sha256 = "525b39cb098b102229a6f6e3689aa2165f1a92ab9e3d143344c0bd961d67aa16",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-239-75.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-0__239-76.el8.x86_64",
    sha256 = "db09bd7a2058745d49b8c7e2f18aebe15bed9f19918d3350443d0ced7d873436",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-239-76.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-container-0__239-67.el8.aarch64",
    sha256 = "01a0553b2ae7a013752bc3d4e59c8e4d5d3912dfd9090abdc25ff0de76f4590b",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/systemd-container-239-67.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/01a0553b2ae7a013752bc3d4e59c8e4d5d3912dfd9090abdc25ff0de76f4590b",
    ],
)

rpm(
    name = "systemd-container-0__239-75.el8.x86_64",
    sha256 = "3b7f174637a32aee8700b7c368a46b0c5c30a264904a9c2384fc3e532e199c95",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-container-239-75.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-libs-0__239-67.el8.aarch64",
    sha256 = "fbdcddaee9f71505cbf46cd61a4ed31e55ce3eca47db334f44886d73813b57ef",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/systemd-libs-239-67.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/fbdcddaee9f71505cbf46cd61a4ed31e55ce3eca47db334f44886d73813b57ef",
    ],
)

rpm(
    name = "systemd-libs-0__239-75.el8.x86_64",
    sha256 = "077ae07a7a4266ad4358450ef4924e85e97e6649597580d49b220db560e94154",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-libs-239-75.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-libs-0__239-76.el8.x86_64",
    sha256 = "6e2711ed6cbd7131f39134a4858cf40ee69c127b78555b67897fc3b13f5504b3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-libs-239-76.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-pam-0__239-67.el8.aarch64",
    sha256 = "32a772300fd1c6fbec40cf5b319e29de76c76916f2b00280a27204f9c41e3b01",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/systemd-pam-239-67.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/32a772300fd1c6fbec40cf5b319e29de76c76916f2b00280a27204f9c41e3b01",
    ],
)

rpm(
    name = "systemd-pam-0__239-75.el8.x86_64",
    sha256 = "a6641597a33e17b0a00baa5e970f653c2ebf05a92d6ed8c8694e03f548d37fb6",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-pam-239-75.el8.x86_64.rpm"],
)

rpm(
    name = "systemd-pam-0__239-76.el8.x86_64",
    sha256 = "071f023acd4477d5c5feac1e5a20aa09699d36f02b67629804aedf73d14ff7b9",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/systemd-pam-239-76.el8.x86_64.rpm"],
)

rpm(
    name = "tar-2__1.30-6.el8.aarch64",
    sha256 = "ef568db2a1acf8da0aa45c2378fd517150d3c878b025c0c5e030471ddb548772",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/tar-1.30-6.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/ef568db2a1acf8da0aa45c2378fd517150d3c878b025c0c5e030471ddb548772",
    ],
)

rpm(
    name = "tar-2__1.30-9.el8.x86_64",
    sha256 = "11503bc24cef6e61b260bb907b6a10f51a6cfe1e8b31d601a178c07ac84438a8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/tar-1.30-9.el8.x86_64.rpm"],
)

rpm(
    name = "tzdata-0__2022c-1.el8.aarch64",
    sha256 = "aec23ed2a3c13dece3c9afbcb455feb399849478042d02b9c2ce29f5bcaef552",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/tzdata-2022c-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/aec23ed2a3c13dece3c9afbcb455feb399849478042d02b9c2ce29f5bcaef552",
    ],
)

rpm(
    name = "tzdata-0__2023c-1.el8.x86_64",
    sha256 = "804a7267d6e2076a5d64d0ce22528b86d2a1d7501173858e95df1c7428ce62f3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/tzdata-2023c-1.el8.noarch.rpm"],
)

rpm(
    name = "unbound-libs-0__1.16.2-2.el8.aarch64",
    sha256 = "39fe6d556d9456718922c74b639dfea8991a49cf109b6dff9872826f02e33934",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/unbound-libs-1.16.2-2.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/39fe6d556d9456718922c74b639dfea8991a49cf109b6dff9872826f02e33934",
    ],
)

rpm(
    name = "unbound-libs-0__1.16.2-5.el8.x86_64",
    sha256 = "50cdd79fd25f9ec2c350c0572b982f896d5b9e52b778b9b4022509d833e894ec",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/unbound-libs-1.16.2-5.el8.x86_64.rpm"],
)

rpm(
    name = "usbredir-0__0.12.0-4.el8.x86_64",
    sha256 = "ec965bcaba711727c3e74b3c4a8a56627a24e71fb17290f336fad1825a4c1f98",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/usbredir-0.12.0-4.el8.x86_64.rpm"],
)

rpm(
    name = "userspace-rcu-0__0.10.1-4.el8.aarch64",
    sha256 = "c4b53c8f1121938c2c5ae3fabd48b9d8f77c7d26f47a76f5c0eab3fd7f0a6cfc",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/userspace-rcu-0.10.1-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c4b53c8f1121938c2c5ae3fabd48b9d8f77c7d26f47a76f5c0eab3fd7f0a6cfc",
    ],
)

rpm(
    name = "userspace-rcu-0__0.10.1-4.el8.x86_64",
    sha256 = "4025900345c5125fd6c10c1780275139f56b63be2bfac10be83628758c225dd0",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/userspace-rcu-0.10.1-4.el8.x86_64.rpm"],
)

rpm(
    name = "util-linux-0__2.32.1-38.el8.aarch64",
    sha256 = "590e73677f9c23b838bb78dce0ae886366b7b946252dc70c757db004175233bb",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/util-linux-2.32.1-38.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/590e73677f9c23b838bb78dce0ae886366b7b946252dc70c757db004175233bb",
    ],
)

rpm(
    name = "util-linux-0__2.32.1-42.el8.x86_64",
    sha256 = "a47941cc26c9b58f215ece943a618531d8964f7372ea6954f7f51d25e15c0ed3",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/util-linux-2.32.1-42.el8.x86_64.rpm"],
)

rpm(
    name = "vim-minimal-2__8.0.1763-19.el8.4.aarch64",
    sha256 = "4a921c33ca497386a80d4f6ace2ec54bc8e568c83f6197daa9a0f29b8a97fe1d",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/vim-minimal-8.0.1763-19.el8.4.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4a921c33ca497386a80d4f6ace2ec54bc8e568c83f6197daa9a0f29b8a97fe1d",
    ],
)

rpm(
    name = "vim-minimal-2__8.0.1763-19.el8.4.x86_64",
    sha256 = "8d1659cf14095e2a82da7b2b7c21e5b62fda058590ea66b9e3d33a6794449e2c",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/vim-minimal-8.0.1763-19.el8.4.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/8d1659cf14095e2a82da7b2b7c21e5b62fda058590ea66b9e3d33a6794449e2c",
    ],
)

rpm(
    name = "which-0__2.21-18.el8.aarch64",
    sha256 = "c27e749065a42c812467155241ee9eedfcaae0f08f4cec952aa65194e98723d7",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/which-2.21-18.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c27e749065a42c812467155241ee9eedfcaae0f08f4cec952aa65194e98723d7",
    ],
)

rpm(
    name = "which-0__2.21-20.el8.x86_64",
    sha256 = "188566e09990efc4ddf7db764542a8eb8be631f3834ae68d32de24efc05163b2",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/which-2.21-20.el8.x86_64.rpm"],
)

rpm(
    name = "xkeyboard-config-0__2.28-1.el8.aarch64",
    sha256 = "a2aeabb3962859069a78acc288bc3bffb35485428e162caafec8134f5ce6ca67",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/xkeyboard-config-2.28-1.el8.noarch.rpm",
        "https://storage.googleapis.com/builddeps/a2aeabb3962859069a78acc288bc3bffb35485428e162caafec8134f5ce6ca67",
    ],
)

rpm(
    name = "xkeyboard-config-0__2.28-1.el8.x86_64",
    sha256 = "a2aeabb3962859069a78acc288bc3bffb35485428e162caafec8134f5ce6ca67",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/AppStream/x86_64/os/Packages/xkeyboard-config-2.28-1.el8.noarch.rpm"],
)

rpm(
    name = "xml-common-0__0.6.3-50.el8.x86_64",
    sha256 = "6d7676847b3c0dbac22983c85c0a419af43029cc3b8ff5dc26c9f85174fc85d8",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/xml-common-0.6.3-50.el8.noarch.rpm"],
)

rpm(
    name = "xorriso-0__1.4.8-4.el8.aarch64",
    sha256 = "4280064ab658525b486d7b8c2ca5f87aeef90002361a0925f2819fd7a7909500",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/xorriso-1.4.8-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/4280064ab658525b486d7b8c2ca5f87aeef90002361a0925f2819fd7a7909500",
    ],
)

rpm(
    name = "xorriso-0__1.4.8-4.el8.x86_64",
    sha256 = "3a232d848da1ace286efef6c8c9cf0fcfab2c47dd58968ddb6a24718629a6220",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/xorriso-1.4.8-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/3a232d848da1ace286efef6c8c9cf0fcfab2c47dd58968ddb6a24718629a6220",
    ],
)

rpm(
    name = "xz-0__5.2.4-4.el8.aarch64",
    sha256 = "c30b066af6b844602964858ef77b995e944ffbdd7a153a9c5c7fc30fd802b926",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/xz-5.2.4-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c30b066af6b844602964858ef77b995e944ffbdd7a153a9c5c7fc30fd802b926",
    ],
)

rpm(
    name = "xz-0__5.2.4-4.el8.x86_64",
    sha256 = "99d7d4bfee1d5b55e08ee27c6869186531939f399d6c3ea33db191cae7e53f70",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/xz-5.2.4-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/99d7d4bfee1d5b55e08ee27c6869186531939f399d6c3ea33db191cae7e53f70",
    ],
)

rpm(
    name = "xz-libs-0__5.2.4-4.el8.aarch64",
    sha256 = "9498f961afe361c5f9e0eea0ce64f11071b1cb1afe30636cb888d109737ea16f",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/xz-libs-5.2.4-4.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/9498f961afe361c5f9e0eea0ce64f11071b1cb1afe30636cb888d109737ea16f",
    ],
)

rpm(
    name = "xz-libs-0__5.2.4-4.el8.x86_64",
    sha256 = "69d67ea8b4bd532f750ff0592f0098ace60470da0fd0e4056188fda37a268d42",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/x86_64/os/Packages/xz-libs-5.2.4-4.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/69d67ea8b4bd532f750ff0592f0098ace60470da0fd0e4056188fda37a268d42",
    ],
)

rpm(
    name = "yajl-0__2.1.0-11.el8.aarch64",
    sha256 = "3ae671d2c8bfd1f53ea706e3969dd2dafd5a2960371e8b6f6083fb345985a491",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/aarch64/os/Packages/yajl-2.1.0-11.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/3ae671d2c8bfd1f53ea706e3969dd2dafd5a2960371e8b6f6083fb345985a491",
    ],
)

rpm(
    name = "yajl-0__2.1.0-11.el8.x86_64",
    sha256 = "55a094ffe9f378ef465619bf6f60e9f26b672f67236883565fb893de7675c163",
    urls = [
        "http://mirror.centos.org/centos/8-stream/AppStream/x86_64/os/Packages/yajl-2.1.0-11.el8.x86_64.rpm",
        "https://storage.googleapis.com/builddeps/55a094ffe9f378ef465619bf6f60e9f26b672f67236883565fb893de7675c163",
    ],
)

rpm(
    name = "zlib-0__1.2.11-20.el8.aarch64",
    sha256 = "c6dbfad47ac76904024403eecfe97dd2a84d51ef29709c6e89572fae922adce3",
    urls = [
        "http://mirror.centos.org/centos/8-stream/BaseOS/aarch64/os/Packages/zlib-1.2.11-20.el8.aarch64.rpm",
        "https://storage.googleapis.com/builddeps/c6dbfad47ac76904024403eecfe97dd2a84d51ef29709c6e89572fae922adce3",
    ],
)

rpm(
    name = "zlib-0__1.2.11-25.el8.x86_64",
    sha256 = "5c1212ffb76fd10248b7f590a3defa16dba502187a4e6ac29c02083837ffc86d",
    urls = ["http://linux-ftp.sh.intel.com/pub/mirrors/centos/8-stream/BaseOS/x86_64/os/Packages/zlib-1.2.11-25.el8.x86_64.rpm"],
)
