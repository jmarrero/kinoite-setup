This is my Kinoite (Atomic Desktop) setup using Bootable Containers (bootc) technology,
previously known as OSTree Native Container technology.

The setup builds the ./Containerfile using buildah.

The resulting build is pushed to:
ghcr.io/jmarrero/jmarrero-silverblue:latest

You can find examples of replacing packages, installing kernel modules, and more at the:
[CoreOS Layering Examples](https://github.com/coreos/layering-examples) repo. 
Most CoreOS layering examples should work with Atomic desktops by changing the base image.
