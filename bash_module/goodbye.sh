function description() {
    echo "That is about it for this guide."
    echo ""
    echo "We have touched on every big concept regarding Bash." \
         "However you should know that the devil is in the details." \
         "I bit you farewell now, but take a word of advice:" \
         "consult the manual regurarly."
    echo "(Oh blessed there be the manual!)"
    echo ""
    echo -e "${BLUE}# Enter any command to finish the module.${NORMAL}"
}

function hint() {
    true
}

function validate() {
    return 1
}
