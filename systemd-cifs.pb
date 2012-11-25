---
- hosts: all
  sudo: True
  tasks:
  - aggvar: prefix=cifsmount yaml=private/*
  - template: src=files/srv.automount dest=/etc/systemd/system/${item.srv}.${item.mount}.automount
    with_items: $cifsmount
  - template: src=files/srv.mount dest=/etc/systemd/system/${item.srv}.${item.mount}.mount
    with_items: $cifsmount
  - template: src=files/srv.creds dest=/root/.cifscred-${item.srv}.${item.mount}.automount
    with_items: $cifsmount
