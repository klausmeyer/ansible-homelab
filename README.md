# Ansible for my homelab

Applying desired state:

```
ansible-playbook -i hosts.yml site.yml
```

Installing updates:

```
ansible -i hosts.yml raspberries -m apt -a "upgrade=yes update_cache=yes" --become
```
