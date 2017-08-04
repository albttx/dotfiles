
run_segment() {
	status=$(docker-machine ls | grep default | awk {' print $4'})
	if [[ $status == "Running" ]]; then
		echo "🐳 "
	fi
}
