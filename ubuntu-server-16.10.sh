#!/bin/bash

dir=$(dirname "$(readlink -f "$0")")
vm_provider="virtualbox"
box_name="ubuntu-server-16.10"

packer build -var "box_name=${box_name}" -var-file="${dir}/${box_name}.json" "${dir}/packer.json" || {
  echo "Packer failed to create Vagrant box.";
  exit 1;
}

vagrant box add --force "${USER}/${box_name}" "${dir}/boxes/${vm_provider}/${box_name}.box" || {
  echo "Vagrant failed to add box.";
  exit 1;
}
