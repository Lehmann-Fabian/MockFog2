#!/bin/bash

cd node-manager

node app.js agent
node app.js manipulate
node app.js orchestrate

cd ..