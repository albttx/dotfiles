
run_segment() {
	tor_status=$(curl --socks5 localhost:9050 --socks5-hostname localhost:9050 -s https://check.torproject.org/ | cat | grep -m 1 Congratulations | xargs)
	if [[ ! -z $tor_status ]]; then
		echo "TOR 👻 "
	fi
}
