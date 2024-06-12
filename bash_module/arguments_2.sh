function description() {
    echo "Nice!"
    echo ""
    echo "Now, we can gain an understanding how word splitting works."
    echo ""
    echo "Bash does not perform word splitting at every whitespace character," \
         "rather every amount of whitespace will result in one split."
    echo -e "For example:${YELLOW}"
    echo "  $ echo Hello     World"
    echo "  Hello World"
    echo -e "${NORMAL}"
    echo -e "The extra spaces make no difference." \
            "If we ${BOLD}want${NORMAL} the extra whitespace," \
            "we need to pass the sentence as one single argument." \
            "We can do this by using quotes:${YELLOW}"
    echo "  $ echo \"This    is    a    test.\""
    echo "  This    is    a    test."
    echo -e "${NORMAL}"
    echo -e "Quotes group everything inside them into a single argument." \
            "The argument is: '${ITALICS}This    is    a    test.${NORMAL}'" \
            "... specifically spaced." \
            "Note that the quotes are not part of the argument" \
            "- Bash removes them before handing the argument to echo." \
            "echo prints this single argument out just like it always does."
    echo ""
    echo -e "${YELLOW}touch${NORMAL} is another common program" \
            "used for creating empty files or updating their" \
            "file access dates."
    echo ""
    echo -e "${BLUE}# Commit a war crime by creating a file with a space in its name!${NORMAL}"
}

function hint() {
    echo -e "${YELLOW}$ touch \"space space space those are 3 spaces\"${NORMAL}"
}

function validate() {
    if [ -n "$(find -iname '* *')" ]; then
        return 1
    fi
}
