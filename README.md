# Ansible Role: NTP

Installs `NTP` on RedHat/CentOS with Ansible

## Requirements
None.

## Role Variables
Available variables are listed below, along with default values (see `vars/main.yml`):

```
ntp_pkg_state: 'present'

ntp_service_state: 'started'
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
- Add `tests` to [travis](https://travis-ci.org/) (Docker & CentOS)
- Run `serverspec` tests in [travis](https://travis-ci.org/)

## License
MIT

## Author Information
This role was created in 2016 by Grischa Aranda