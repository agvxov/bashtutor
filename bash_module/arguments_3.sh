function description() {
    echo -e "${CYAN}Congrats to becoming an Honorary Serbian!${NORMAL}"
    echo ""
    echo "As it was said before the program and its arguments are always separated by" \
         "whitespace."
    echo "This is important to remember. For example, the following is wrong:"
    echo -e "  ${YELLOW}$ [0 == 0]"
    echo -e "  bash: [0: command not found${NORMAL}"
    echo -e "This is intended to test whether two values are equal." \
            "It's reasonable to assume that whitespace around '[' and ']' doesn't matter," \
            "but '[' is actually a program, and it requires its last argument to be ']'." \
            "(We will cover the '[' program in more detail later.)" \
            "Therefore, we ${BOLD}must separate${NORMAL} '[' and ']' from the 0s," \
            "otherwise Bash will think we are trying to execute" \
            "a command named [0 with the arguments == and 0]."
    echo ""
    echo "The correct command separates all arguments with whitespace."
    echo ""
    echo "(We see a lot of people who are confused by this behavior;" \
         "they think that they can omit the whitespace between it and its arguments," \
         "so we need to present this particular example early.)"
    echo ""
    echo -e "${BLUE}# Fix our malformed command so that it checks" \
            "that 0 is in fact equal to 0.${NORMAL}"
}

function hint() {
    echo "  $ [ 0 == 0 ]"
}

function validate() {
    if [ "$*" == "[ 0 == 0 ]" ]; then
        return 1
    fi
}
