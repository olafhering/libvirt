# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    dnf update -y --nogpgcheck fedora-gpg-keys
    dnf distro-sync -y
    dnf install -y \
        audit-libs-devel \
        augeas \
        bash-completion-devel \
        ca-certificates \
        ccache \
        clang \
        codespell \
        compiler-rt \
        cpp \
        cppi \
        cyrus-sasl-devel \
        device-mapper-devel \
        diffutils \
        dwarves \
        ebtables \
        firewalld-filesystem \
        fuse-devel \
        gcc \
        gettext \
        git \
        glib2-devel \
        glibc-devel \
        glibc-langpack-en \
        glusterfs-api-devel \
        gnutls-devel \
        grep \
        json-c-devel \
        libacl-devel \
        libattr-devel \
        libblkid-devel \
        libcap-ng-devel \
        libcurl-devel \
        libiscsi-devel \
        libnbd-devel \
        libnl3-devel \
        libpcap-devel \
        libpciaccess-devel \
        librbd-devel \
        libselinux-devel \
        libssh-devel \
        libssh2-devel \
        libtirpc-devel \
        libwsman-devel \
        libxml2 \
        libxml2-devel \
        libxslt \
        make \
        meson \
        ninja-build \
        numactl-devel \
        parted-devel \
        perl-base \
        pkgconfig \
        python3 \
        python3-black \
        python3-docutils \
        python3-flake8 \
        python3-pytest \
        qemu-img \
        readline-devel \
        rpm-build \
        sanlock-devel \
        sed \
        systemd-devel \
        systemd-rpm-macros \
        systemtap-sdt-devel \
        systemtap-sdt-dtrace \
        wireshark-devel \
        xen-devel
    rm -f /usr/lib*/python3*/EXTERNALLY-MANAGED
    rpm -qa | sort > /packages.txt
    mkdir -p /usr/libexec/ccache-wrappers
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/cc
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/clang
    ln -s /usr/bin/ccache /usr/libexec/ccache-wrappers/gcc
}

export CCACHE_WRAPPERSDIR="/usr/libexec/ccache-wrappers"
export LANG="en_US.UTF-8"
export MAKE="/usr/bin/make"
export NINJA="/usr/bin/ninja"
export PYTHON="/usr/bin/python3"
