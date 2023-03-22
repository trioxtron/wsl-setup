# Purpose
This repository serves the purpose of automating the setup of a WSL Ubuntu subsystem in Windows

# Prerequisites
 - Ansible
	```sh
	apt install -y python3-pip && python3 -m pip install ansible
	```

## Execution
> Note `-K` as it will allow Ansible's become tag to operate. 
```sh
cd wsl-setup && ansible-playbook -K playbook.yml
```
