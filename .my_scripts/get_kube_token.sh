#!/bin/sh

kubectl config view | grep -A10 "name: $(kubectl config current-context)" | awk '$1=="access-token:"{print $2}'
