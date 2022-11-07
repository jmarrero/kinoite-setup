FROM quay.io/fedora/fedora-silverblue:39
RUN rpm-ostree install \
    # sign git tags for releases
    git-evtag \
    # local debug tools 
    htop ripgrep  \
    # kerberos auth
    krb5-workstation \
    # run local qemu vms
    libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm \
    virt-install virt-manager virt-viewer \
    # dev tools
    make xsel strace \
    # preffered tools
    neofetch gnome-tweak-tool util-linux-user fish gnome-console \
    # logitech mouse/keyboard pairing
    solaar \
    # remove gnome-terminal
    && rpm-ostree override remove gnome-terminal-nautilus gnome-terminal \
    # cleanup and verification stage
    && rm -rf /var/lib/unbound \
    && ostree container commit
