function description() {
    echo -e "${BOLD}BASH${NORMAL} is an acronym for" \
            "${BOLD}B${NORMAL}ourne ${BOLD}A${NORMAL}gain ${BOLD}Sh${NORMAL}ell." \
            "It is based on the Bourne shell and is mostly compatible with its features. "
    echo ""
    echo "A shell is a language interpreter which interacts with a human user." \
         "This is accomplished by repeatedly taking and executing commands." \
         "The term shell is most often associated capabilities to communicate with the" \
         "operating system."
    echo ""
    echo "We will start start by getting you up speed with how to issue a command." \
         "For this you will have to know how a command looks like:"
    echo -e "${YELLOW}"
    echo "  $ program-name argument-1 argument-2 argument-N"
    echo -e "${NORMAL}"
    echo "Many things in Bash have to be separated with white spaces," \
         "such as the program name and its arguments."
    echo ""
    echo "Traditionally, a shell prompt either ends with $, % or #." \
         "If it ends with $, this indicates a shell that's compatible with the Bourne shell" \
         "(such as a POSIX shell, or a Korn shell, or Bash)." \
         "If it ends with %, this indicates a C shell (csh or tcsh);" \
         "this guide does not cover C shell. If it ends with #," \
         "this indicates that the shell is running as the system's superuser account (root)," \
         "and that you should be extra careful." \
         "In this guide and in most guides in general '$ ' denotes the entire prompt."
    echo ""
    echo "Note that the Bash documentation defines commands as such:"
    echo -e "  ${ITALICS}A simple shell command such as 'echo a b c' consists of the command" \
            "itself followed by arguments, separated by spaces.${NORMAL}"
    echo "Which is fair, but for clarity's sake we will be referring to the first" \
         "portion as a 'program'."
    echo ""
    echo -e "${BLUE}# To continue, enter what part of the command is 'a'" \
            "in the following command!${NORMAL}"
    echo -e "  ${YELLOW}$ touch a${NORMAL}"
}

function hint() {
    echo "It's an argument."
}

function validate() {
    if [[ "$1" =~ argument.* ]]; then
        return 1
    fi
}
