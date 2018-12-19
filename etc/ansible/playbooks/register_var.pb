---
- hosts: centOS1
  tasks:
  - name: test shell
    shell: "echo test"
    register: testvar

  - name: shell module return values
    debug:
      var: testvar