# Ansible Role: NTP

[![Build Status](https://travis-ci.org/garandam/ansible-role-ntp.svg?branch=master)](https://travis-ci.org/garandam/ansible-role-ntp)

Installs `NTP` on RedHat/CentOS with Ansible

## Requirements
This role requires Ansible 1.4 or higher, and platform requirements are listed in the metadata file.

## Role Variables
Available variables are listed below, along with default values (see `vars/main.yml`):

```
ntp_pkg_state: 'present'

ntp_service_state: 'started' => 'running'
ntp_service_enabled: 'yes'

ntp_config_server: [ '0.pool.ntp.org', '1.pool.ntp.org', '2.pool.ntp.org', '3.pool.ntp.org' ]
```

## Dependencies
None.

## Example Playbook
Install `NTP` and set the default settings.
```yaml
---
- hosts: all
  roles:
    - role: ntp
```

Install `NTP` and set custom servers.
```yaml
---
- hosts: all
  roles:
    - role: ntp
      ntp_config_server: ['0.ch.pool.ntp.org', '1.ch.pool.ntp.org', '2.ch.pool.ntp.org', '3.ch.pool.ntp.org']
```

## ToDo
- Run `serverspec` tests in [travis](https://travis-ci.org/)

## THX
- [Bert Van Vreckem](https://bertvv.github.io/notes-to-self/about/)
- [Testing Ansible roles with Travis-CI, Part 1: CentOS](http://bertvv.github.io/notes-to-self/2015/12/11/testing-ansible-roles-with-travis-ci-part-1-centos/)
- [Testing Ansible roles with Travis-CI, Part 2: Multi-platform tests](http://bertvv.github.io/notes-to-self/2015/12/13/testing-ansible-roles-with-travis-ci-part-2-multi-platform-tests/)

## License
MIT

## Author Information
This role was created in 2016 by Grischa Aranda