generate:
	yes | ssh-keygen -t rsa -q -N "" -f cloud-init/ssh/packer-key_rsa
	printf "#cloud-config\nssh_authorized_keys:\n- $$(cat cloud-init/ssh/packer-key_rsa.pub)" > cloud-init/user-data

build-%:
	rm -rf output/$*
	packer build ./images/$*/packer.json

build: generate build-base

convert-%:
	qemu-img convert -f qcow2 -O vmdk output/$*/$*.qcow2 output/$*/$*.vmdk 

clean:
	rm -rf output
	rm -rf packer_cache
	rm -rf cloud-init/user-data
	rm -rf cloud-init/ssh/*
