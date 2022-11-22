#!/bin/bash

set -ex

simple_app_url="http://$(cat terraform_output.txt | awk '{ print $3 }' | sed 's/"//g')"

#simple_app_response=$(curl  $simple_app_url -s)
simple_app_response_code=$(curl $simple_app_url -s --output curl_output.txt --write-out "%{http_code}")
simple_app_response="$(cat curl_output.txt)"

if [[ "$simple_app_response" != "Hello World!" ]] && [[ $simple_app_response_code -eq 200 ]]
  then
    echo "Test faild. Response: \"$simple_app_response\" with code $simple_app_response_code"
    exit 1
  else
    echo "Test passed. Response: \"$simple_app_response\" with code $simple_app_response_code"
fi
