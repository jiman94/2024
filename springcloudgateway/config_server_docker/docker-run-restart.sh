#! /bin/bash

docker run --restart=always --name dev_config_server -p 8888:8888 -d dev_config_server
