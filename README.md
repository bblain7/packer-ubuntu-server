# Packer Ubuntu Server

This project creates an Ubuntu Server Vagrant box for VirtualBox using Packer.

## Prerequisites

Download and install each of the following software.

- Packer
- Vagrant
- VirtualBox

## Usage

There are multiple bash scripts in the project root that will execute the commands needed to build the box with Packer and then add the box to Vagrant. Once the prerequisites are installed, run one of the bash scripts and a Vagrant box with the identifier of `${USER}/${box_name}` will be created.

# Installation

Run one of the bash scripts.

```shell
sh ubuntu-server-16.10.sh
```

The script makes some assumptions about where files should be located.

The Packer created box will be placed in:

```shell
${project_dir}/boxes/${vm_provider}/${box_name}.box
```

Vagrant will add the new box to the Vagrant local catalog under the identity of the user that creates the box.

```shell
${USER}/${box_name}
```
