# satellite_sentinel
### Red Hat Satellite Maintenance Utility for managing content views, environment promotion, and clean up

#### Definitely a work in progress. Feedback is welcome.

**Requirements** : 

- Ansible 2.7-ish. Older versions may work but the Foreman modules are tested against 2.7
- Ansible Foreman Modules - [https://github.com/theforeman/foreman-ansible-modules/]

##### Usage

- Customize the inventory.sample and copy it to custom/inventory. The example shell scripts are keyed to look for this inventory file. If you're familiar with Ansible, you can redirect it to a different inventory file as needed.
- Customize the sample workflow files in the ./workflows directory. The format is relatively self explanatory if you know Red Hat Satellite.
  - The provided workflow files do the following
    - __1-publish.json__ - Publishes Content Views and then the Composite Content Views that depend on them. This action creates a new version of the CV/CCV from what is in the library.
    - __2-promote-dev.json__ - Promote the new Content Views into Dev  **TODO** : Add direct version support, currently always uses "latest"
    - __3-promote-prod.json__ - Promote the Content Views from Dev to Production  **TODO** : Add direct version support, currently always uses "latest"
    - __4-purge-old.json__ - Remove old versions of the specified CCVs/CVs. Note that the intended use is to purge old CCVs versions first as CV versions cannot be removed until they are no longer part of any CCVs.



     
