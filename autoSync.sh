#!/bin/bash

hugo -D

git pull origin master
git add .
git commit -m 'add some code from Mac'

# git commit -m 'add some results from Server'
git push             #upload data

ssh root@42.192.3.108 "cd /home/sheng/myblog; git pull origin master"
cd ..