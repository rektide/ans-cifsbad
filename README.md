This is an attempt at using Ansible for configuring systemd cifsmounts.

# Result #

This project is presently in a broken state. It has want of a way to compose the facts in private/ in a way which can feel the templates in files/

There was a working rendition earlier, however it's approach was limited by two levels of manual configuration: specifying each vars_file, and composing those vars_files via use of an overarching vars: list. That checkout is:

https://github.com/rektide/ans-cifsbad/commit/cd83d07261c937a8b3d42881eedfc0b4e707a24e
