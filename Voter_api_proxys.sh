#!/bin/bash
# this is sample which use Proxyaxe service to recive a proxy server and use it to send the vote, also there commented alteranive where you can repacte the server after -x to the IP address and use free service
# Change $PollID to the actual id and change the choiceIds to the one selected from the voteing list

for i in {1..1}; do

# IP=$(curl -s "http://pubproxy.com/api/proxy?limit=1&format=txt&type=socks5")
# IP=$(curl -s "http://pubproxy.com/api/proxy?limit=1&format=txt&http=true&country=US&type=http")
# IP=$(curl -s "https://www.proxyscan.io/api/proxy?last_check=900&country=fr,us,ru&uptime=20&ping=300&limit=1&type=socks4,socks5&level=anonymous&format=txt")

curl -m 15 -x  socks5://proxyaxe.com:9866 'https://www.polltab.com/api/poll/$PollID/vote'   -H 'Connection: keep-alive'   -H 'Accept: application/json'   -H 'DNT: 1'   -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36 OPR/73.0.3856.344'   -H 'Content-Type: application/json'   -H 'Origin: https://www.polltab.com'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Dest: empty'   -H 'Referer: https://www.polltab.com/QcbSk5H_osp'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Cookie: _ga=GA1.2.1595207535.1620411461; _gid=GA1.2.277468704.1620411461; _gat=1'   --data-binary '{"choiceIds":["60945f8eb7e76f327b67987f"]}'
printf "\n"
sleep $[ ( $RANDOM % 6 )  + 1 ]s

done 


