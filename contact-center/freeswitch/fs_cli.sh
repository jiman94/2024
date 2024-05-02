#!/bin/sh

docker exec -it freeswitch  fs_cli -H 192.168.176.28 -P 8021 -p ClueCon

# docker exec -it freeswitch  fs_cli -H 127.0.0.1 -P 8021 -p ClueCon

