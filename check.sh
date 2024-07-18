(nc -w0 $sut_addr 22 2> /dev/null && echo "ssh_state=up") || echo "ssh_state=down"
