---
- hosts: all
  sudo: True
  vars_files:
  - "private/server-one.mount-one"
  - "private/server-one.mount-secondary"
  vars:
  - remotes:
    - $cifsmountSOMS
    - $cifsmountSOMO
  tasks:
  - template: src=files/srv.automount dest=/etc/systemd/system/${item.srv}.${item.mount}.automount
    with_items: $remotes
  - template: src=files/srv.mount dest=/etc/systemd/system/${item.srv}.${item.mount}.mount
    with_items: $remotes
  - template: src=files/srv.creds dest=/root/.cifscred-${item.srv}.${item.mount}.automount
    with_items: $remotes
