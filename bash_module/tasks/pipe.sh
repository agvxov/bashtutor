function description() {
    echo -e "Now that you can effortlessly manipulate ${ITALICS}File Descriptors${NORMAL}" \
            "to direct certain types of output to certain files," \
            "it's time you learn some more ingenious tricks available through I/O redirection. "
    echo ""
    echo "What if you want to connect the output of one application directly" \
         "to the input of another?" \
         "That way, you could build a sort of chain to process output."
    echo ""
    echo ""
    echo -e "Let me teach you the command you will use with pipes the most often:" \
            "${BOLD}G${NORMAL}lobal ${BOLD}Re${NORMAL}gex ${BOLD}P${NORMAL}rint," \
            "or 'grep' for short."
    echo "'grep' searches its input based on its first argument and print the lines" \
         "which contain a match."
    echo "For example:"
    echo " $ cat myfile | grep mystring"
    echo ""
    echo -e "'cat' outputs our file and the pipe created with the ${YELLOW}|${NORMAL}" \
            "symbol redirects it to the input of 'grep'."
    echo ""
    echo "However, do you remember the animal abuse I mentioned? I just commited it."
    echo "'grep' is perfectly capable of reading files on its own:"
    echo " $ grep mystring myfile"
    echo ""
    echo "One more important concept: pipes are continuous." \
         "The process on the left need not to exit before the one on right can start" \
         "reading its output."
    echo ""
    echo -e "${BLUE}# Find out which man option refreshes its cache and store it in \$SOLUTION!${NORMAL}"
}

function hint() {
    echo "Get the help message of man with its --help option and grep for the keyword 'cache'."
}

function validate() {
    if [ "$SOLUTION" == "-u" ] || [ "$SOLUTION" == "--update" ]; then
        return 1
    fi
}
