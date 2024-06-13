function description() {
    function task_job_spawner() {
        function hog() {
            cat
        }
        function reader() {
            read
            touch reader_success
        }
        function lurker() {
            while true; do
                sleep 1
            done
        }

        kill -9 $(jobs -p) 2> /dev/null

        hog &
        reader &
        hog &
        hog &

        unset hog
        unset reader
    }

    echo "On Posix systems, jobs are implemented as \"process groups\"," \
         "with one process being the leader of the group." \
         "Each tty (terminal) has a single \"foreground process group\"" \
         "that is allowed to interact with the terminal." \
         "All other process groups with the same controlling tty" \
         "are considered background jobs," \
         "and can be either running or suspended."
    echo ""
    echo "A signal is a type of asyncronous inter-process communication" \
         "implemented by the kernel." \
         "There are roughtly 30 different signals," \
         "most can be ignored by the program, but some cannot."
    echo ""
    echo -e "Certain keypresses at the terminal cause signals to be sent to all" \
            "processes in the foreground process group." \
            "These can be configured with stty, but these are the defaults:${YELLOW}"
    echo "  Ctrl-Z sends SIGTSTP to the foreground job (usually suspending it)"
    echo "  Ctrl-C sends SIGINT to the foreground job (usually terminating it)"
    echo "  Ctrl-\ sends SIGQUIT to the foreground job (usually causing it to dump core and abort)"
    echo -e "${NORMAL}"
    echo ""
    echo -e "You have access to the following commands to control jobs:${YELLOW}"
    echo "  fg <jobspec> : bring a background job to the foreground."
    echo "  bg <jobspec> : run a suspended job in the background."
    echo "  jobs <options> : list suspended and background jobs."
    echo "  kill <jobspec> : can take a jobspec instead of a process ID."
    echo "  disown : tells bash to forget about an existing job. This keeps Bash killing the job when shutting down."
    echo -e "${NORMAL}"
    echo ""
    echo -e "${CYAN}<jobspec>${NORMAL} is a '%' followed by the job number" \
            "as printed by '${YELLOW}jobs${NORMAL}'."
    echo ""
    echo "So, what does all that mean?" \
         "Job control allows you to have multiple things going on within a single" \
         "terminal session." \
         "(This was terribly important in the old days when you only had one terminal," \
         "and no way to create virtual terminals to add more.)" \
         "On modern systems, you have more choices available" \
         "-- you could for example run tmux or screen within a terminal to give you" \
         "virtual terminals." \
         "Maybe you started a backup and it's taking longer than you expected." \
         "You can suspend it with Ctrl-Z and then put it in the background with bg," \
         "and get your shell prompt back, so that you can work on something" \
         "while that backup is running."
    echo ""
    echo -e "${BLUE}# The command 'task_job_spawner' have been defined," \
            "which will spawn multiple jobs in the backgroud." \
            "Perform the following operations on them!${NORMAL}"
    echo -e "${GREEN}Kill all 'hog's!${NORMAL}"
    echo -e "${GREEN}Enter some text into the stdin of 'reader'!${NORMAL}"
    echo -e "${GREEN}Spawn and place in the background 'lurker'!${NORMAL}"
}

function hint() {
    true
}

function validate() {
    if ! jobs | grep hog &> /dev/null &&
       [ -e reader_success ] &&
       jobs | grep sleep &> /dev/null; then
        kill -9 $(jobs -p) 2> /dev/null
        unset task_job_spawner
        return 1
    fi
}
