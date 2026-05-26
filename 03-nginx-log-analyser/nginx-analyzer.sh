#!/bin/bash

if [ $# -eq 0 ]; then
        echo "Error: no argument provided"
        exit 1
fi

echo "*****************************************************************************"
echo ">>>>>>>>>>>>> Top 5 IP addresses with the most requests"
awk '{print $1}' $1 | sort | uniq -c | sort -rn | head -5

echo "*****************************************************************************"
echo ">>>>>>>>>>>>> Top 5 most requested paths"
awk '{print $7}' $1 | sort | uniq -c | sort -rn | head -5

echo "*****************************************************************************"
echo ">>>>>>>>>>>>> Top 5 response status codes"
awk '{print $9}' $1 | grep -v '"-"' | sort | uniq -c | sort -rn | head -5

echo "*****************************************************************************"
echo ">>>>>>>>>>>>> Top 5 user agents"
awk '{print substr($0, index($0, $12))}' $1 | sort | uniq -c | sort -rn | head -5
