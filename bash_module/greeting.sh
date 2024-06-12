function description() {
    echo -e "This module is based on ${MAGENTA}https://mywiki.wooledge.org/BashGuide${NORMAL}" \
            "(which is the recommended guide of #bash @ libera and the hacker known as 4chan," \
            "but do note that this material is not endorsed or sponsored by said source)." \
            "While whole paragraphs have been lifted," \
            "the guide has been altered and expanded to fit the bashtutor format." \
            "Terms have been changed in some cases in ways that do not follow" \
            "the official Bash documentations terminology." \
            "Said changes were performed with consideration to understandability and" \
            "user experience."
    echo ""
    echo "This module is licensed under CC-BY-SA 4.0 as to comply with the source material."
    echo ""
    echo -e "${BLUE}# Enter any (e.g. empty) command to continue!${NORMAL}"
}

function hint() {
    true
}

function validate() {
    return 1
}
