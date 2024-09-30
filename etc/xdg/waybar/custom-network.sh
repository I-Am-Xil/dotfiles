#!/usr/bin/bash

ping google.com -c 1

if [ $? -eq 0 ]; then
    echo '{"text": " "}'
else
    echo '{"text": " "}'
fi

