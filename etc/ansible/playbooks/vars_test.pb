---
  - hosts: web,db

   tasks:
   - name:  test group_vars
     debug: msg="The variable server is {{ server }}. ansible_host is {{ ansible_host }} "