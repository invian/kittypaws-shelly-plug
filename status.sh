(nc -w0 $sut_addr 22 2> /dev/null && echo "ssh_state=up") || echo "ssh_state=down"
curl "http://$plug_ip/relay/0" 2> /dev/null  | jq '.ison' | xargs -I {} echo ison={}
(ping -c1 -W1 $sut_addr > /dev/null && echo "ping=true") || echo "ping=false"
echo "target=$target_alias"
