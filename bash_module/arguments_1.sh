function description() {
    echo -e "As you might have noticed Bash has complained about what you have just entered." \
            "This is because it ${ITALICS}tried${NORMAL} to run what you just entered as" \
            "a program, but failed finding it."
    echo ""
    echo -e "Now, let me introduce you to your first valid program: ${BOLD}echo${NORMAL}." \
            "echo's purpose is to print to ${ITALICS}stdout${NORMAL} (more on that later)." \
            "This very line you are reading uses echo."
    echo ""
    echo -e "${BLUE}# Try echoing some arbitrary message.${NORMAL}"
}

function hint() {
    echo "For example, 'echo Hello World'"
}

function validate() {
    if [ "$1" == "echo" ]; then
        return 1
    fi
}
