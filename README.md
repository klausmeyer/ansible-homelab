# Ansible for my homelab

Applying desired state:

```
ansible-playbook -i hosts.yml site.yml
```

Installing updates:

```
ansible -i hosts.yml debian -m apt -a "upgrade=yes update_cache=yes" --become
```

Apply baseline on local machine:

```
ansible-playbook -i 'localhost,' local.yml -bK -e ansible_user=$USER -e ansible_user_dir=$HOME
```
