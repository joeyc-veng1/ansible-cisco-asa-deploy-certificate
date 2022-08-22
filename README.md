# Ansible playbook for deploying SSL certificates on Cisco ASA firewalls

Tested on Ubuntu 22.04 with Let's Encrypt certificates requested using the certbot client

**This repository includes:**

Script to convert certificates from PEM format to PFX format

Single file Ansible playbook for deploying the PFX certificate to the ASA

You will most likely be calling these using cron jobs. For example:

```
20 2 * * * /bin/bash /usr/local/bin/generate-pfx-anyconnect >/dev/null 2>&1
0 3 * * 4 /usr/bin/ansible-playbook ~/playbooks/deploy-anyconnect-certificate.yml > ~/anyconnect-certdeploy-log.txt 2>&1
```
