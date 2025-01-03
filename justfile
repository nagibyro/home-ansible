dev-machine-work-vm:
    ansible-playbook -i inventory playbook-dev-machine-01.yml -K -u nagibyro -e "headless_vm=false with_tailscale=false dev_user_name=nagibyro"
