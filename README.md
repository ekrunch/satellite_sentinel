# satellite_sentinel
### Red Hat Satellite Maintenance Utility for managing content views, environment promotion, and clean up

#### Definitely a work in progress. Feedback is welcome.

**Requirements** : 

- Ansible 2.9-ish. Older versions may work but I've been testing using 2.9
- Ansible Satellite Modules - [https://cloud.redhat.com/ansible/automation-hub/repo/published/redhat/satellite/docs]
  - These modules are part of the Ansible Certified Content repo and will be pulled automatically from the requirements. The Foreman modules would probably work too but require code changes. Note that to access certified modules Ansible (or Ansible Tower) will have to be configured to access the certified repository.

##### Usage

- Customize the inventory.sample and copy it to custom/inventory. The example shell scripts are keyed to look for this inventory file. If you're familiar with Ansible, you can redirect it to a different inventory file as needed.
- Customize the sample workflow files in the ./workflows directory. The format is relatively self explanatory if you know Red Hat Satellite.
  - The provided workflow files do the following
    - __1-publish.json__ - Publishes Content Views and then the Composite Content Views that depend on them. This action creates a new version of the CV/CCV from what is in the library.
    - __2-promote-dev.json__ - Promote the new Content Views into Dev  **TODO** : Add direct version support, currently always uses "latest"
    - __3-promote-prod.json__ - Promote the Content Views from Dev to Production  **TODO** : Add direct version support, currently always uses "latest"
    - __4-purge-old.json__ - Remove old versions of the specified CCVs/CVs. Note that the intended use is to purge old CCVs versions first as CV versions cannot be removed until they are no longer part of any CCVs.



     
