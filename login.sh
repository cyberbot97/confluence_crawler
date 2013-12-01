#!/bin/bash

URL=localhost8090

curl 'http://localhost:8090' -v -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl 'http://localhost:8090/homepage.action' -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl 'http://localhost:8090/login.action?os_destination=%2Fhomepage.action' -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl -d 'os_username=admin&os_password=admin&os_cookie=true&os_destination=%2Fhomepage.action' 'http://localhost:8090/dologin.action' -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl 'http://localhost:8090/homepage.action' -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl 'http://localhost:8090/dashboard.action' -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt
