function description() {
    echo "function joke() { echo 'Knock knock. Race condition. Whos there?'; }" > .joke.cfg

    echo "When you call one script from another," \
         "the new script inherits the environment of the original script," \
         "just like running any other program in UNIX." \
         "Explaining what this means is out of the scope of this guide," \
         "but for the most part you can consider the environment to be" \
         "the current working directory, open file descriptors," \
         "and environment variables, which you can view using the export command."
    echo "When the script that you ran (or any other program, for that matter)" \
         "finishes executing, its environment is discarded." \
         "This means, for example, you can't simply run a script to change" \
         "your current working directory for you."
    echo ""
    echo -e "What you can do is to source the script," \
            "instead of running it as a child."
            "You can do this using the '${YELLOW}source${NORMAL}'" \
            "(or '${YELLOW}.${NORMAL}') command: "
    echo -e "  ${YELLOW}\$ source ./myscript${NORMAL}"
    echo ""
    echo -e "${BLUE}# I'm sorry, but there is not much fun to be had with sourcing." \
            "So instead of a cool task you get a joke placed inside .joke.cfg." \
            "Source it and run the joke!${NORMAL}"
}

function hint() {
    true
}

function validate() {
    if [ "$*" == "joke" ] && [ "$BASHTUTOR_R" == 0 ]; then
        return 1
    fi
}
