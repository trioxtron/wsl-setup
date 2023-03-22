#Purpose
This repository serves the purpose of automating the setup of a WSL Ubuntu subsystem in Windows

#Prerequisites
 - Ansible
	```
	apt install -y python3-pip && python3 -m pip install ansible
	```

##Instruction
> Note `-K` as it will allow Ansible's become tag to operate.
`cd wsl-setup && ansible-playbook -K playbook.yml`
