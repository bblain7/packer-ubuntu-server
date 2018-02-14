# Packer Ubuntu Server

This project creates an Ubuntu Server Vagrant box for VirtualBox using Packer.

## Prerequisites

Download and install each of the following software.

- HashiCorp Packer
- HashiCorp Vagrant
- Oracle VirtualBox

## Usage

Execute the ``./ubuntu`` bash script and a Vagrant box with the identifier of `${USER}/${box_name}` will be created.

### Arguments

1. **-v | --version**  
Set the Ubuntu version to build. (e.g. 17.04, 17.10). The latest version will be the default.

### Vagrant Box

The script makes some assumptions about where files should be located. The Packer created box will be placed in:

```shell
${project_dir}/boxes/${vm_provider}/${box_name}.box

# for example
/packer-ubuntu-server/17.10/boxes/virtualbox/ubuntu-server-17.10.box
```

Vagrant will add the new box to the Vagrant local catalog under the identity of the user that creates the box.

```shell
${USER}/${box_name}

# for example
brian/ubuntu-server-17.10
```

# TODO

* Need to fix the ssh keys because they are still being retrieved from github url. Is there a way to generate the key? https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
