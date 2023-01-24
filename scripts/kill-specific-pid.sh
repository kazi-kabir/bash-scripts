list_pids() {
    for pid in $(ps -eo pid | tail -n +2); do
        cmdline=$(cat /proc/$pid/cmdline | tr '\0' ' ')
        echo "PID: $pid - Command: $cmdline"
    done
}

kill_pid() {
    pid=$1
    kill -9 $pid
    if [ $? -eq 0 ]; then
        echo "Successfully killed PID $pid"
    else
        echo "Failed to kill PID $pid"
    fi
}

list_pids

while true; do
    read -p "Enter the PID of the process you want to kill (or 'q' to quit): " pid_to_kill
    if [ "$pid_to_kill" == "q" ]; then
        break
    fi
    kill_pid $pid_to_kill
done