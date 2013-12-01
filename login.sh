#!/bin/bash

source ./config.sh

curl "http://${BASEURL}" -v -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl "http://${BASEURL}/homepage.action" -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl "http://${BASEURL}/login.action?os_destination=%2Fhomepage.action" -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl -d "os_username=${USERNAME}&os_password=${USERPASS}&os_cookie=true&os_destination=%2Fhomepage.action" "http://${BASEURL}/dologin.action" -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl "http://${BASEURL}/homepage.action" -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt

curl "http://${BASEURL}/dashboard.action" -v -b old_cookie.txt -c new_cookie.txt

cat new_cookie.txt > old_cookie.txt
