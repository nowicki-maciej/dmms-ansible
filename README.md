# dmms-ansible
This repository holds DMMS application deployment scripts.

## Usage
To use this repository, you should have ansible installed. In Ubuntu just do `sudo apt install ansible`. You also need secret `.vault-pass` file. Ask one of maintainers to obtain it.

To use playbooks use command line:
```
ansible-playbook foundation/installation.yml -i inventories/dev
```

## foundation
This directory holds roles that prepare environment for main services deployment. It includes installing tools such as: NGINX, Java, MySQL.
It contains two main playbooks:
* `pre-installation.yml` - prepares raw server environment for development flow. It changes root password, disables ssh password login, introduces admin user and grants him sudo privilages.
* `installation.yml` - installs development tools such as NGINX

## deployment
This directory holds roles that install DMMS application on server.
