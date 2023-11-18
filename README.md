# Ansible Playbooks
This repo holds ansible playbooks for configuring different servers I have
running personally. Combination of dev machines, web boxes ect...

## Install Ansbile
It's a good idea to install ansible in a python venv since I'm not going to run
a dedicated ansible control node (at least not right now).

```
mkdir -p $HOME/venv
python -m venv $HOME/venv/ansible
cd $HOME/venv/ansible && . ./bin/activate
python -m pip install ansible
ansible-galaxy collection install -r requirements.yml
deactivate
```

## Run playbook
1. Create inventory file if not exist `touch inventory`
2. set inventory contents
```
[devmachine]
xxx.xxx.xxx.xxx #dev machine ip address
```
3. export secrets env vars from 1password
3. exectue playbook `ansible-playbook -i inventory playbook-dev-machine-01.yml -u bnagi -K`

### Caveats
- You have to connect to the box with the user you'll be logging in as to do work
- You need ssh keys configured for the user you're logging in as to be setup
  with github. Also you need githubs ssh hostkey added to ssh already. TODO 
  automate all this. (Make sure it's ed25519 key)


### Manual steps after Runbook
- Manually login to 1password cli accounts see [cli sigin manually docs](https://developer.1password.com/docs/cli/sign-in-manually)
