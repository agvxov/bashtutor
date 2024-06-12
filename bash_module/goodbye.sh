function description() {
    echo -e "${GREEN}${BOLD}That is about it for this guide.${NORMAL}"
    echo ""
    echo "We have touched on every big concept regarding Bash." \
         "However you should know that the devil is in the details." \
         "I bit you farewell now, but take a word of advice:" \
         "consult the manual regurarly."
    echo -e "${MAGENTA}(Oh blessed there be the manual!)${NORMAL}"
    echo ""
    echo -e "${BLUE}# Enter any command to finish the module.${NORMAL}"
}

function hint() {
    true
}

function validate() {
    return 1
}
