#! /bin/bash

ssh -i ./dev-bastion-key.pem user@1.1.1.1 -p 22 \
    -L 3306:1.1.1.1:3306 
