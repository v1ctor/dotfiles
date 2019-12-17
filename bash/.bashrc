


kill_named_process() {
	if [[ $# -eq 0 ]]
	then
		echo "Specify a process name"
		exit 1
	fi
	ps aux | grep $1 | awk '{print $1}' | xargs -I{} kill -9 {}	
}
