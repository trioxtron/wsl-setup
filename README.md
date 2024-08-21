# Purpose
This repository serves the purpose of automating the setup of a WSL Ubuntu subsystem in Windows

# Prerequisites
 - python3.10
	```sh
	sudo add-apt-repository ppa:deadsnakes/ppa
	apt update
	
	sudo apt upgrade
	```
	
	```sh
	sudo apt install python3.10
	```
	
	Check for current python version use:
	```sh
	sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
	sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
	
	sudo update-alternatives --config python3
	
	python3 --version
	```
	
 - pip for python3.10
	```sh
	curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10
	```
	
	```sh
	python3 -m pip --version
	```
	
 - Ansible [core > 2.14]
	```sh
	python3 -m pip install ansible
	```

## Execution
```sh
make env
```
