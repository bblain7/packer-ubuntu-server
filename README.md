# Packer Ubuntu Server

This project creates an Ubuntu 16.04 Vagrant box for VirtualBox using Packer.

## Usage

There is a bash script (``create-box.sh``) in the project root that will execute the commands needed to build the box with Packer and then add the box to Vagrant.

# Getting Started

## Prerequisites

- Packer
- Vagrant

# Installation

Download the [Ubuntu Server 16.04 iso](http://releases.ubuntu.com/16.04/ubuntu-16.04.1-server-amd64.iso)

Open the file ubuntu-server-16.04.json and modify the ``iso_urls`` attribute to point to the correct iso. Also modify the ``box_name`` to match the iso name. (This makes it easier for when the Vagrant box is created.)

Execute the bash script from the project root.

```shell
sh create-box.sh
```

The script makes some assumptions about where files should be located.

The Packer created box will be placed in:

```shell
${project_dir}/boxes/${vm_provider}/${box_name}.box
```

Vagrant will add the new box to the Vagrant local catalog under the identity of the user that creates the box.

```shell
${user}/${box_name}
```

# FIXME

- Need to update the version to 16.10 (Could probably use a better way to set the version between the bash script and Packer)
- Ubuntu iso version is hard coded in Packer json