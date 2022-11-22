#!/bin/bash
simple_app_url="http://$(cat terraform_output.txt | awk '{ print $3 }' | sed 's/"//g')"
simple_app_response=$(curl  $simple_app_url -s)

if "$simple_app_response" != "Hello World!"
  then
    echo $simple_app_response
    exit 1
fi