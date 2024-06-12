function description() {
    echo -e "A script is basically a sequence of commands in a file." \
            "Bash reads the file and processes the commands ${BOLD}in order${NORMAL}." \
            "It moves on to the next command only when the current one has ${BOLD}ended${NORMAL}." \
            "(The exception being if a command has been specified to run asynchronously," \
            "in the background." \
            "Don't worry too much about this case yet" \
            "- we'll learn about how that works later on.)"
    echo ""
    echo "Creating a script is easy, just create and open a new file" \
         "and place some Bash commands."
    echo ""
    echo -e "Running bash scripts is similarly easy." \
            "You can just pass the file name as an argument to the" \
            "'${YELLOW}bash${NORMAL}' program."
    echo ""
    echo -e "${BLUE}# Create your first Bash script (it can be anything) and run it${NORMAL}"
}

function hint() {
    echo "Attempt using the cli text editor 'nano'," \
         "which is probable to be installed on your system."
}

function validate() {
    if [ "$1" == "bash" ] && [ $# -ne 1 ] && [ "$BASHTUTOR_R" != "127" ]; then
        return 1
    fi
}
