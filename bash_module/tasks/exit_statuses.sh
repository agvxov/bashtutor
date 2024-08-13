function description() {
    echo -e "Every command results in an exit code whenever it terminates." \
            "This exit code is used by whatever application started it" \
            "to evaluate whether everything went OK." \
            "Conceptually this is like a return value from a function." \
            "It's an integer between 0 and 255 (inclusive)." \
            "Convention dictates that we use 0 to denote success," \
            "and any other number to denote failure of some sort." \
            "The specific number is entirely application-specific," \
            "and is used to hint as to what exactly went wrong."
    echo ""
    echo "For example the test program you have seen before ('[ 0 == 0 ]')" \
         "utilizes exit statuses."
    echo ""
    echo -e "${BLUE}# Find a way to execute a command with a non-zero exit value.${NORMAL}"
}

function hint() {
    echo "You could modify the test to something false ('[ 1 == 0 ]')" \
         "or try to execute a non-existent program."
}

function validate() {
    if [ $BASHTUTOR_R != 0 ]; then
        return 1
    fi
}
