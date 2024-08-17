function description() {
    echo "That's right, its an argument."
    echo ""
    echo -e "As you may see above, Bash is complaining." \
            "This is because it ${ITALICS}tried${NORMAL} to run what you just entered as" \
            "a program, but failed finding it, because no such program is installed."
    echo ""
    echo -e "Now, let me introduce you to your first valid program: ${YELLOW}echo${NORMAL}." \
            "echo's purpose is to print to ${ITALICS}stdout${NORMAL} (more on that later)." \
            "This very line you are reading uses echo."
    echo ""
    echo -e "${BLUE}# Try echoing some arbitrary message!${NORMAL}"
}

function hint() {
    echo -e "For example, '${YELLOW}\$ echo Hello World${NORMAL}'"
}

function validate() {
    if [ "$1" == "echo" ] && [ "$#" != 1 ]; then
        return 1
    fi
}
