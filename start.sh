#!/bin/bash


PATH="$HOME/.local/bin:$PATH"

#TODO read with cat

AWS_ACCESS_KEY_ID=`awk 'NR==1 {print; exit}' < ~/aws_credentials`
AWS_SECRET_ACCESS_KEY=`awk 'NR==2 {print; exit}' < ~/aws_credentials`

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

cd node-manager

node app.js bootstrap
#node app.js agent
#node app.js manipulate

#install kubernetes


