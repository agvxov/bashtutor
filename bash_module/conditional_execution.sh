function description() {
    echo -e "Now that we know what exit codes are," \
            "and that an exit code of '${CYAN}0${NORMAL}'" \
            "means the command's execution was ${BOLD}successful${NORMAL}," \
            "we'll learn to use this information." \
            "The easiest way of performing a certain action depending" \
            "on the success of a previous command is through the use of control operators." \
            "These operators are ${YELLOW}&&${NORMAL} and ${YELLOW}||${NORMAL}," \
            "which respectively represent a logical ${GREEN}AND${NORMAL}" \
            "and a logical ${GREEN}OR${NORMAL}." \
            "These operators are used between two commands," \
            "and they are used to control whether the second command" \
            "should be executed depending on the success of the first." \
            "This concept is called conditional execution."
    echo ""
    echo -e "The operator ${YELLOW}!${NORMAL} in front of a command causes Bash to negate" \
            "the command's exit status." \
            "If the command returns 0 (success)," \
            "the ${YELLOW}!${NORMAL} turns it into a failure." \
            "Likewise, if the command returns non-zero (failure)," \
            "the ${YELLOW}!${NORMAL} turns it into a success."
    echo ""
    echo "A friend once called me and asked 'Hey, do you want a new born cat?'" \
         "after politely declining he continued 'Ok, ok, ok I understand..." \
         "And what about a dozen?'."
    echo "Now, I'm going to give you a cat whether you want it or not," \
         "tho she is quite old and she is digital" \
         "so you may make as many (copies) as you wish:"
    echo -e "  ${YELLOW}$ cat <file>${NORMAL}"
    echo "She can be used to conveniently print file contents to you console or" \
         "as primarily intended con${BOLD}CAT${NORMAL}enate multiple files." \
         "You should also know that she has a long history of being abused by pointed" \
         "usage in scripts. You will see about that in time..."
    echo ""
    echo -e "${BLUE}# Ensure that the following condition becomes true:${NORMAL}"
    INTERNAL_CONDITION='touch ${MYFILE} && cat "new file" || false && ! [ "" == "$a" ]'
    echo -e "  ${YELLOW}${INTERNAL_CONDITION}${NORMAL}"
}

function hint() {
    echo "You will need to fill up 2 variables and create 'new file' so cat" \
         "does not encounter an error due to the file missing."
}

function validate() {
    if eval "${INTERNAL_CONDITION}"; then
        return 1
    fi
}
