#!/bin/bash
ansible-playbook -i custom/inventory maintain_satellite.yml $1 $2 $3 $4
