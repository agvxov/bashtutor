function description() {
    if [ -n "$SECRET_MESSAGE" ]; then
        SECRET_KEY_ENCODED=$(echo "Terry is King" | base64)
        SECRET_MESSAGE=$(echo "\
/o\\ The key is partial, append ${SECRET_KEY_ENCODED:(-4)} to it! \
$(echo "Line 1 Col 0, the dev was an antihero" | base64) \
/o\\ Erase from the key as many runes as 2 raised to the number of monks is! \
$(echo "Copyleft your DNA for free beer" | base64) \
/o\\ Every . is a &! \
$(echo "Emacs > Vim. Simple as." | base64) \
/o\\ The key lays to the right! \
$(echo "Linux is a cancer that attaches itself..." | base64) \
/0\\ The key lays to the left! \
uWpvUaq2mciBetKEK${SECRET_KEY_ENCODED::(-4)}
/o\\ Not everyone is a monk here!\
")
        SECRET_MESSAGE=${SECRET_MESSAGE//2/\.}
        SECRET_MESSAGE=${SECRET_MESSAGE//&/2}
        SECRET_MESSAGE=$(echo "$SECRET_MESSAGE" | base64)
    fi

    echo "Believe it or not," \
         "What you already know is the most simple variable expansion." \
         "Bash is capable of many ways of expansions." \
         "Below is a table of all of them."
    echo ""
    echo "  ${YELLOW}\${parameter:-word}${NORMAL}"
    echo "      Use Default Value."
    echo "  ${YELLOW}\${parameter:=word}${NORMAL}"
    echo "      Assign Default Value."
    echo "  ${YELLOW}\${parameter:+word}${NORMAL}"
    echo "      Use Alternate Value."
    echo "  ${YELLOW}\${parameter:offset:length}${NORMAL}"
    echo "      Substring Expansion. 0-indexed. If ':length' is omitted, go all the way to the end. If 'offset' is negative (use parentheses!), count backward."
    echo "  ${YELLOW}\${#parameter}${NORMAL}"
    echo "      The length in characters of the value of 'parameter' is substituted."
    echo "  ${YELLOW}\${parameter#pattern}${NORMAL}"
    echo "      Shortest match deleted from the start."
    echo "  ${YELLOW}\${parameter##pattern}${NORMAL}"
    echo "      Longest match deleted from the start."
    echo "  ${YELLOW}\${parameter%pattern}${NORMAL}"
    echo "      Shortest match deleted from the end."
    echo "  ${YELLOW}\${parameter%%pattern}${NORMAL}"
    echo "      Longest match deleted from the end."
    echo "  ${YELLOW}\${parameter/pattern/string}${NORMAL}"
    echo "      Replace the first match."
    echo "  ${YELLOW}\${parameter//pattern/string}${NORMAL}"
    echo "      Replace all matches."
    echo "  ${YELLOW}\${parameter/#pattern/string}${NORMAL}"
    echo "      As above, but matched against the beginning. Useful for adding a common prefix with a null pattern: \"\${array[@]/#/prefix}\"."
    echo "  ${YELLOW}\${parameter/%pattern/string}${NORMAL}"
    echo "      As above, but matched against the end. Useful for adding a common suffix with a null pattern. "
    echo ""
    echo "Hold it close, because you will need it for the hooded GNU monks" \
         "to let you past. Their message for you have been stored in \$SECRET_MESSAGE."
    echo "They also told me to teach you this 'sorcery' (as they refered to it):"
    echo -e "  ${YELLOW}$ base64 (--decode)${NORMAL}"
    echo -e "You can use this to communicate in their anchient language called base-64." \
            "By adding '${YELLOW}--decode${NORMAL}' as an argument you will be understand them." \
            "It's important to know that you can't give a string as an argument to base64," \
            "you will have to pipe in the string."
    echo ""
    echo -e "${RED}IF YOU GET STUCK INSIDE base64 PRESS ${YELLOW}ctrl+d${RED}!${NORMAL}"
    echo ""
    echo -e "${BLUE}# Save the solution to the GNU monk's riddle in \$KEY${NORMAL}"
}

function hint() {
    echo "1) Save the decoded text in a variable"
    echo "2) Between each monk ('/o\\') is still encoded text," \
         "analize what the monks are saying to determine which one you will need" \
         "to decode once more."
    echo "3) Use %% then ## to trim down the encoded key into a variable."
    echo "4) Perform the third monks substitution."
    echo "5) Use :offset to trim according to to second monk."
    echo "6) Append according to the first monk."
    echo "7) Decode the key and store it."
    echo "Bonus) You can check the rest of the messages." \
         "On them you will not need to perform step 5 and 6."
}

function validate() {
    if [ "$KEY" == "Terry is King" ]; then
        return 1
    fi
}
