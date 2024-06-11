function description() {
    echo "Now that we know what exit codes are," \
         "and that an exit code of '0' means the command's execution was successful," \
         "we'll learn to use this information." \
         "The easiest way of performing a certain action depending" \
         "on the success of a previous command is through the use of control operators." \
         "These operators are && and ||," \
         "which respectively represent a logical AND and a logical OR." \
         "These operators are used between two commands," \
         "and they are used to control whether the second command" \
         "should be executed depending on the success of the first." \
         "This concept is called conditional execution."
    echo ""
    echo "The operator ! in front of a command causes Bash to negate" \
         "the command's exit status." \
         "If the command returns 0 (success)," \
         "the ! turns it into a failure." \
         "Likewise, if the command returns non-zero (failure)," \
         "the ! turns it into a success."
    echo ""
    echo "A friend once called me and asked 'Hey, do you want a new born cat?'" \
         "after politely declining he continued 'Ok, ok, ok I understand..." \
         "And what about a dozen?'."
    echo "Now, I'm going to give you a cat whether you want it or not," \
         "tho she is quite old and she is digital" \
         "so you may make as many (copies) as you wish:"
    echo "  $ cat <file>"
    echo "She can be used to conveniently print file contents to you console or" \
         "as primarily intended conCATanate multiple files." \
         "You should also know that she has a long history of being abused by pointed" \
         "usage in scripts. You will see about that in time..."
    echo ""
    echo -e "${BLUE}# Ensure that the following condition becomes true:${NORMAL}"
    INTERNAL_CONDITION='touch ${MYFILE} && cat "new file" || false && ! [ "" == "$a" ]'
    echo "  ${INTERNAL_CONDITION}"
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
