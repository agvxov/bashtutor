function description() {
    PASTA="\
No, Richard, it's 'Linux', not 'GNU/Linux'. \
The most important contributions that the FSF made to Linux \
were the creation of the GPL and the GCC compiler. \
Those are fine and inspired products. \
GCC is a monumental achievement and has earned you, RMS, \
and the Free Software Foundation countless kudos \
and much appreciation."

    function tutor_function1() {
        echo -n "No, Richard, it's 'Linux', not 'GNU/Linux'." \
                "The most important contributions that the FSF made to Linux "
        echo -n "were the creation of the GPL and the GCC compiler." \
                "Those are fine and inspired products. " 1>&2
    }
    function tutor_function2() {
        echo -n "GCC is a monumental achievement and has earned you, RMS, " 1>&2
        echo -n "and the Free Software Foundation countless kudos" \
                "and much appreciation."
    }

    echo -e "${BOLD}File Descriptors${NORMAL} (${BOLD}FD${NORMAL}s)" \
            "are the way programs refer to files or pseudo-files."
    echo "FDs are kind of like pointers to sources of data, or places data can be written."
    echo "By default, every new process starts with three open FDs:"
    echo -e "  ${YELLOW}Standard Input (stdin):"
    echo -e "      ${CYAN}FD 0${GREEN}"
    echo -e "      In an interactive shell, the characters you type on your keyboard."
    echo -e "  ${YELLOW}Standard Output (stdout):"
    echo -e "      ${CYAN}FD 1${GREEN}"
    echo -e "      Where the program sends normal information so that the user can see it."
    echo -e "      In an interactive shell, your terminal."
    echo -e "  ${YELLOW}Standard Error (stderr):"
    echo -e "      ${CYAN}FD 2${GREEN}"
    echo -e "      Where the program sends its error messages."
    echo -e "      In an interactive shell, your terminal."
    echo -e "${NORMAL}"
    echo "GUI applications also have these FDs," \
         "but they don't normally work with them."
    echo -e "${YELLOW}"
    echo "  \$ read -p \"What is your name? \" name; echo \"Good day, $name.  Would you like some tea?\""
    echo "  What is your name? lhunath"
    echo "  Good day, lhunath.  Would you like some tea?"
    echo -e "${NORMAL}"
    echo -e "read is a command that reads information from ${ITALICS}stdin${NORMAL}" \
            "and stores it in a variable ('\$name')." \
            "Once read has read a line," \
            "it finishes and echo displays the message to ${ITALICS}stdout${NORMAL}."
    echo ""
    echo -e "So what is ${ITALICS}stderr${NORMAL}? Another example:${YELLOW}"
    echo "  $ rm secrets"
    echo "  rm: cannot remove \`secrets': No such file or directory"
    echo -e "${NORMAL}Unless you have a file called 'secrets' in your current directory," \
            "'rm' will fail and show an error message." \
            "Error messages like these are by convention displayed on ${ITALICS}stderr${NORMAL}."
    echo -e "The distinction between ${ITALICS}stdout${NORMAL} and" \
            "${ITALICS}stderr${NORMAL} makes it easy to" \
            "keep errors separated from the application's normal messages."
    echo ""
    echo "File Redirection involves changing a single FD to point to a file." \
         "It only to ${BOLD}one command${NORMAL}." \
         "The pattern of how it works is actually harder to describe than to" \
         "recognize, so here is an example:"
    echo -e "  ${YELLOW}$ echo 'The End. Never forget.' > b-ook.txt${NORMAL}"
    echo -e "And here is a list:${YELLOW}"
    echo "  >   # stdout to file with overwriting"
    echo "  >>  # stdout to file with appending"
    echo " 1>   # stdout to file with overwriting"
    echo " 1>>  # stdout to file with appending"
    echo " 2>   # stderr to file with overwriting"
    echo " 2>>  # stderr to file with appending"
    echo " &>   # stdout and stderr to file with overwriting"
    echo " &>>  # stdout and stderr to file with appending"
    echo " 1>&2 # stdout to stderr"
    echo " 2>&1 # stderr to stdout"
    echo " <    # file to stdin"
    echo -e "${NORMAL}"
    echo ""
    echo -e "${CYAN}Note:${NORMAL} there exists a special virtual file" \
            "'${YELLOW}/dev/null'." \
            "You can write whatever to it and it will just discard it." \
            "It is often used to silence command output, errors or both" \
            "with a redirection to it."
    echo ""
    echo -e "${BLUE}# Below is a partial copy-pasta." \
            "We defined tutor_function1 and tutor_function2" \
            "for you which output various segments of the text." \
            "Your task is to reconstruct the original into 'rebuttal.pasta'" \
            "using redirections!${NORMAL}"
    echo -e "${GREEN}${PASTA}${NORMAL}"
}

function hint() {
    echo "Remember the cat I've given you and how you can not only inspect" \
         "file contents with it, but concatenate multiple." \
         "Don't be afraid to create temporary files."
}

function validate() {
    if [ -e "rebuttal.pasta" ] && [ "$PASTA" == "$(cat rebuttal.pasta)" ]; then
        return 1
    fi
}
