#!/bin/sh

# 나의 PC 아이피 확인 : 192.168.176.28

docker exec -it freeswitch  fs_cli -H 192.168.176.28 -P 32979 -p ClueCon

