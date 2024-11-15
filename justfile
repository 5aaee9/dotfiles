deploy-aurora:
    ansible-playbook -K -i inventory main.yml --extra-vars "@aurora.config.yml"
