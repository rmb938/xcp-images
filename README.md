# xcp-images
XCP-ng Images

Uses Qemu to build images Centos 7 compatible with XCP-ng. These images are configured 
for cloud-init.

## How to use

### Requirements

* Packer 1.6+
* Qemu and KVM
* XCP-ng Deployment with Xen Orchestra

## Steps

1. Build the Base and Kernel Images: `make build`
1. Build any additional images: `make build-$image`
1. Convert final image to vmdk: `make convert-$image`
1. Import Disk into Xen Orchestra and create a VM with cloud-init.

## Images

### Base

A Base Centos 7 install with no customization

### Kernel

A Centos 7 install with kernel-ml installed from ELRepo

http://elrepo.org/tiki/HomePage

