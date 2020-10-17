# xcp-images
XCP-ng Images

Uses Qemu to build images Centos 7 compatible with XCP-ng. These images are configured 
for cloud-init.

These images are setup to use my own personal RPM mirrors. Some changes may be required to
use these images yourself.

## How to use

### Requirements

* Packer 1.6+
* Qemu and KVM
* XCP-ng Deployment with Xen Orchestra

## Steps

1. Build the Base and Kernel Images: `make build`
1. Build any additional images: `make build-$image`
1. Import the resulting `.vmdk` disks into Xen Orchestra and create a VM with cloud-init.

## Images

### Base

A Base Centos 7 install with no customization

### Kernel

A Centos 7 install with kernel-ml installed from ELRepo.
This image also enables epel to install `xe-guest-utilities-latest`

http://elrepo.org/tiki/HomePage

