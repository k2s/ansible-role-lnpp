# ttrss #

This [Ansible](http://www.ansible.com/home) role will install [nginx](http://tt-rss.org/). 

## Role Variables ##

### Optional ###

* `nginx_use_https` - `true` to serve the site over https, `false` to serve the site over http (default: `false`)
* `nginx_port` - Port to serve the site over (default: `80` or `443` depending on `nginx_use_https` setting)
* `nginx_hostname` - Hostname where the site will be accessible (default: `{{ inventory_hostname }}`)
* `nginx_keep_default_site` - `true` to leave the 'default' nginx site, `false` to delete it (default: `false`)

When using HTTPS (`nginx_use_https`) you must place a `multi-site.crt` and `multi-site.key` in the `files` directory. Self-signed certificates can be generated with the `generate-cert.sh` script.

When I integrate with duply, I'm sure I'll use some variables out of there as well.

## Example Playbook ##

A simple playbook that just sets the one required variable:

    - hosts: all
      sudo: yes
      roles:
         - role: isaacsimmons.ttrss
           ttrss_db_pass: secret

A more complex example:

    coming soon

## License ##

Simplified BSD
