#!/bin/bash

dir=$(dirname "$(readlink -f "$0")")
vm_provider="virtualbox"
version="16.10"
box_name="ubuntu-server-${version}"

packer build -var "box_name=${box_name}" "${dir}/${version}/packer.json" || {
  echo "Packer failed to create Vagrant box.";
  exit 1;
}

vagrant box add --force "${USER}/${box_name}" "${dir}/${version}/boxes/${vm_provider}/${box_name}.box" || {
  echo "Vagrant failed to add box.";
  exit 1;
}
