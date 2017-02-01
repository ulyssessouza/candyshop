#!/bin/bash
find $PWD -name '*.jar' -exec sh -c "echo \'in: {}\'; unzip -l {} | grep $1" \; | grep -B 1 -A 0 '$1'
