#!/bin/bash
# Simple open redirect tester
echo "Testing $1"
curl -s -k -i "$1?next=//evil.com" | grep -i location
curl -s -k -i "$1?url=https://evil.com" | grep -i location
curl -s -k -i "$1?redirect=//evil.com" | grep -i location
