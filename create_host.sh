#!/bin/bash
ansible-playbook -i custom/inventory create_host.yml $1 $2 $3 $4
