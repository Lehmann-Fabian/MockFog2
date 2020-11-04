#!/bin/bash

cd node-manager

code=124

while [[ "$code" -eq 124 ]]; do

timeout --foreground 7m bash <<EOT
    node app.js agent
    node app.js manipulate
EOT
code=$?

done


cd ..