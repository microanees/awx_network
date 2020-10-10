# AWX Updated Image with Python Packages for Networking Modules

The image has the required python packages for the following vendors

<ul>
<li>Aruba module</li>
<li>Juniper provided junos modules</li>
<li>Caprica</li>
<li>Batfish</li>
<li>NAPALM</li>
</ul>

NAPALM requires to update ansible.cfg file in your projects folder.

```
[defaults]
library = /var/lib/awx/venv/ansible/lib/python3.6/site-packages/napalm_ansible/modules
action_plugins = /var/lib/awx/venv/ansible/lib/python3.6/site-packages/napalm_ansible/plugins/action
```

The user has to add the Collections and roles separately into their projects folder.

<ul>
    <li><a href="https://github.com/Juniper/ansible-junos-stdlib">Juniper</a></li>
    <li><a href="https://github.com/nleiva/capirca_acl">Caprica</a></li>
    <li><a href="https://github.com/batfish/ansible">Batfish</a></li>
    <li><a href="https://github.com/PaloAltoNetworks/ansible-pan">Palo Alto Networks</a></li>
    <li><a href="https://github.com/napalm-automation/napalm-ansible">NAPALM</a></li>
</ul>