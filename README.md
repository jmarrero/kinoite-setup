This is my current silverblue setup using OSTree Native Container.

This builds the ./Dockerfile with podman.

They are pushed to:
`ghcr.io/jmarrero/jmarrero-silverblue:latest`

The base image I use currently comes from:
https://github.com/cgwalters/sync-fedora-ostree-containers

There are examples, replacing packages, installing kernel modules and much more at:
https://github.com/coreos/layering-examples
CoreOS layering examples should work with Silverblue by changing the base image.
