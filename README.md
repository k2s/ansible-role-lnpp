# LNPP #

This [Ansible](http://www.ansible.com/home) role will install a <b>L</b>inux [<b>n</b>ginx](http://tt-rss.org/) [<b>P</b>ostgreSQL](http://www.postgresql.org) [<b>P</b>HP](http://php.net) (<b>LNPP</b>) stack.
It is is meant as an alternative to the traditional <b>L</b>inux <b>A</b>pache <b>M</b>ySQL <b>P</b>HP (<b>LAMP</b>) stack.
It has been tested on Debian and Ubuntu hosts.

## Role Variables ##

### Optional ###

* `nginx_use_https` - `true` to serve the site over https, `false` to serve the site over http (default: `false`)
* `nginx_port` - Port to serve the site over (default: `80` or `443` depending on `nginx_use_https` setting)
* `nginx_hostname` - External hostname for the server (default: `{{ inventory_hostname }}`)
* `nginx_base_url` - Full URL for root of site (default: based on `nginx_use_https`, `nginx_port`, and `nginx_hostname`. ex: `https://example.com:8443/`)
* `php_timezone` - Timezone value to set in php.ini (default: None)

When using HTTPS (`nginx_use_https`) you must place `site.crt` and `site.key` in the `files` directory. Self-signed certificates can be generated with the `generate-cert.sh` script.

The variables `nginx_hostname` and `nginx_base_url` are not used in this role, but are provided for dependent roles that may want them.

## Example Playbook ##

A simple playbook that just uses all of the defaults:

    - hosts: all
      sudo: yes
      roles:
         - role: ../lnpp

A more complex playbook that enables https and uses a non-standard port:

    - hosts: all
      sudo: yes
      roles:
         - role: ../lnpp
           nginx_use_https: true
           nginx_port: 8443

## License ##

Simplified BSD
