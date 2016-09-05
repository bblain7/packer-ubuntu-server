#!/bin/bash


dir=$(dirname "$(readlink -f "$0")")
cd ${dir}

vm_provider="virtualbox"
box_name="ubuntu-server-16.04"

packer build ${box_name}.json || {
  echo "Packer failed to create Vagrant box.";
  exit 1;
}

vagrant box add --force ${USER}/${box_name} ${dir}/boxes/${vm_provider}/${box_name}.box || {
  echo "Vagrant failed to add box.";
  exit 1;
}

