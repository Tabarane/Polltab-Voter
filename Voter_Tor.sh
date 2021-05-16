#!/bin/bash
# make sure you have tor service installed and servie port is the same
# Change $PollID to the actual id and change the choiceIds to the one selected from the voteing list
# make sure tor_rotate.py is in the same directory and all its modules is installed and imported in order to change the exit node address "pyhton3"

for i in {1..999999}; do

curl -s --socks5-hostname 127.0.0.1:9050 curl 'https://www.polltab.com/api/poll/$PollID/vote'   -H 'Connection: keep-alive'   -H 'Accept: application/json'   -H 'DNT: 1'   -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36 OPR/73.0.3856.344'   -H 'Content-Type: application/json'   -H 'Origin: https://www.polltab.com'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Dest: empty'   -H 'Referer: https://www.polltab.com/QcbSk5H_osp'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Cookie: _ga=GA1.2.1595207535.1620411461; _gid=GA1.2.277468704.1620411461; _gat=1'   --data-binary '{"choiceIds":["60945f8eb7e76f327b67987f"]}'

printf "\n"

python3 ./tor_rotate.py

sleep $[ ( $RANDOM % 6 )  + 1 ]s

done 