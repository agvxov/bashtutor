function description() {
    echo "Some variables will be readily provided to you" \
         "by Bash."
    echo ""
    echo "There are over a 100, some only available in" \
         "special contexts." \
         "Many are for configuration purposes," \
         "while others are to easily query system information."
    echo ""
    echo "I recommend quickly browsing the 'Shell Variables'" \
         "section of the Bash manual."
    echo ""
    echo -e "${BLUE}# Change your prompt to anything" \
            "different than the stock bashtutor one!${NORMAL}"
}

function hint() {
    echo "Using man, open the 'bash' manual page" \
         "and search for the definition of the PS<int>" \
         "variables."
}

function validate() {
    if [  "$PS1" != "$BASHTUTOR_PS1" ]; then
        return 1
    fi
}
