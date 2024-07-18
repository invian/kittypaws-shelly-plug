curl "http://$plug_ip/relay/0?turn=on"
sleep $off_state_seconds
curl "http://$plug_ip/relay/0?turn=off"
