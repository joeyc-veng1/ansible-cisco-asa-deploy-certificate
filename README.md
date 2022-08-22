# Ansible playbook for deploying SSL certificates on Cisco ASA firewalls

Tested on Ubuntu 22.04 with Let's Encrypt certificates. The easiest way to obtain these will be using the [certbot-dns-cloudflare](https://certbot-dns-cloudflare.readthedocs.io/en/stable/) method

**This repository includes:**

Script to convert certificates from PEM format to PFX format

Single file Ansible playbook for deploying the PFX certificate to the ASA

You will most likely be calling these using cron jobs. For example:

```
20 2 * * * /bin/bash /usr/local/bin/generate-pfx-from-pem.sh >/dev/null 2>&1
0 3 * * 4 /usr/bin/ansible-playbook ~/playbooks/deploy-anyconnect-certificate.yml > ~/anyconnect-certdeploy-log.txt 2>&1
```
**Forked from**
https://blog.rabin.io/sysadmin/using-ansible-to-manage-trust-point-certificates-in-cisco-asa
