# Dotfiles

macOS dotfiles supported by ansible

## Deployment

```bash
ansible-galaxy role install -r requirements.yml
ansible-galaxy collection install -r requirements.yml


# Input password or random password and Touch ID with sudo patch
ansible-playbook -K -i inventory main.yml --extra-vars "@default.config.yml"
```
