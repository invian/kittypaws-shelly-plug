curl "http://$plug_ip/relay/0?turn=off"
sleep $off_state_seconds
curl "http://$plug_ip/relay/0?turn=on"
