function description() {
    echo "Variables are a sort of named space in memory" \
         "you can use to retrieve or store information." \
         "Generally speaking, they will store string data," \
         "but can also be used to store integers, indexed and associative arrays."
    echo ""
    echo "Variables come in two flavors: user variables and special variables." \
         "Special variables are read-only, pre-set by Bash," \
         "and used to communicate some type of internal status." \
         "User variables are variables that you can create and update yourself."
    echo "Variable names are bound by the following rule:"
    echo -e "  ${ITALICS}Name: A word consisting only of letters, digits and underscores,"
    echo -e "  and beginning with a letter or an underscore. Also referred to as an identifier.${NORMAL}"
    echo ""
    echo "Conventionally shell variables use SCREAMING_SNAKE_CASE."
    echo ""
    echo "To store data in a variable, we use the following assignment syntax:"
    echo -e "  ${YELLOW}$ varname=vardata${NORMAL}"
    echo "This command assigns the data vardata to the variable by name of varname."
    echo -e "Please note that ${BOLD}you cannot use spaces around the = sign${NORMAL}" \
            "in an assignment. If you write this:"
    echo -e "  ${YELLOW}$ varname = vardata${NORMAL}"
    echo "Bash will not know that you are attempting to assign something." \
         "The parser will see varname with no = and treat it as a command name," \
         "and then pass = and vardata to it as arguments."
    echo ""
    echo -e "${BLUE}# With regards to what you have learned so far assign" \
            "the following string to MYVAR!${NORMAL}"
    echo "Hello World"
}

function hint() {
    echo "You will have to quote it."
}

function validate() {
    if [ "$MYVAR" == "Hello World" ]; then
        return 1
    fi
}
