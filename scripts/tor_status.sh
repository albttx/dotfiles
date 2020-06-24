#!/bin/sh

TOR_STATUS=$(curl --socks5 localhost:9050 --socks5-hostname localhost:9050 -s https://check.torproject.org/ | cat | grep -m 1 Congratulations | xargs)

if [[ -z $TOR_STATUS ]]; then
	echo "TOR DOWN"
else
	echo "TOR UP"
fi
