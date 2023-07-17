#!/bin/bash
terraform output -raw private > id_rsa
sudo chmod 400 id_rsa
sudo echo -e "[masters]\n\nmaster ansible_host=$(terraform output -raw IP_pub_manager) ansible_user=momo\nmaster ansible_ssh_private_key_file=id_rsa\n\n[workers]\n\nworker0 ansible_host=$(terraform output -raw IP_worker_0) ansible_user=momo\nworker0 ansible_ssh_private_key_file=id_rsa\n\nworker1 ansible_host=$(terraform output -raw IP_worker_1) ansible_user=momo\nworker1 ansible_ssh_private_key_file=id_rsa" > inventaire.ini
