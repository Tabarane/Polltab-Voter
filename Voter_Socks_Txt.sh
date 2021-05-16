#!/bin/bash
# Make sure to have proxy_list.txt file in the same directory which has all your proxy servers IP:PORT one per line
# Change $PollID to the actual id and change the choiceIds to the one selected from the voteing list

while IFS= read -r line; do
for run in {1..1}; do curl -m 9  -x  socks4://$line 'https://www.polltab.com/api/poll/$PollID/vote'   -H 'Connection: keep-alive'   -H 'Accept: application/json'   -H 'DNT: 1'   -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36 OPR/73.0.3856.344'   -H 'Content-Type: application/json'   -H 'Origin: https://www.polltab.com'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Dest: empty'   -H 'Referer: https://www.polltab.com/QcbSk5H_osp'   -H 'Accept-Language: en-US,en;q=0.9'   -H 'Cookie: _ga=GA1.2.1595207535.1620411461; _gid=GA1.2.277468704.1620411461; _gat=1'   --data-binary '{"choiceIds":["60945f8eb7e76f327b67987f"]}'; done
done < proxy_list.txt
printf "\n"
