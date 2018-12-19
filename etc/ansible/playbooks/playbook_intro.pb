---
- hosts: web
  tasks:
    - name: test command
      command: echo "aa"