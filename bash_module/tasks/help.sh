function description() {
    echo "And now for something completely different!"
    echo ""
    echo -e "To master tools and concepts you will often have to consult documentation." \
            "Depending on the subject we have different ways to access documentation" \
            "from the command line. The most common are:"
    echo -e "${YELLOW}  $ man <subject>      ${blue}# for Unix conforming tools${NORMAL}"
    echo -e "${YELLOW}  $ info <subject>     ${blue}# for GNU conforming tools${NORMAL}"
    echo -e "${YELLOW}  $ help <subject>     ${blue}# for Bash builtins${NORMAL}"
    echo -e "${YELLOW}  $ <program> <--help> ${blue}# Every same executable${NORMAL}"
    echo -e "${YELLOW}  $ <program>  <-h>    ${blue}# Every only slightly unhinged executable${NORMAL}"
    echo ""
    echo "The reason why we have both man and info is GNU wanting to innovate," \
         "but kernel developers and many others wanting to stick with man." \
         "Sometimes the best you can do is to check for both."
    echo ""
    echo -e "${BLUE}# Continue by briefly opening the bash man page!${NORMAL}"
}

function hint() {
    echo -e "  ${YELLOW}\$ man bash${NORMAL}"
}

function validate() {
    if [  "$*" == "man bash" ]; then
        return 1
    fi
}
