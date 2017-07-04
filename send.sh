#!/bin/bash
echo "{id:"`hostname`",ip:'"`/sbin/ip a |/bin/grep 192 | /usr/bin/awk '{print $2}'`"',mac:'"`/sbin/ip a |/bin/grep ether | /usr/bin/awk '{print $2}'`"',data:'"`/usr/bin/wget -q -O - localhost:3333 | /usr/bin/tail -n 16 |/usr/bin/cut -d\> -f4| /bin/egrep "^ETH|^ DCR|^GPU0"`"'}" > body.json
/usr/bin/curl -H "Content-Type: application/json" -X POST -d @body.json http://m.ispbug.ru:8080/update
