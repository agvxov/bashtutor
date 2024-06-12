function description() {
    if [ -z "$DUMMY_FILES_CREATED" ]; then
        function initialize_control_task() {
            for i in $(seq 1 1 100); do
                touch "nt_${i}"
            done
        }
        initialize_control_task
        DUMMY_FILES_CREATED=true
    fi
    echo -e "Now you've learned how to make some basic decisions in your scripts." \
            "However, that's not enough for every kind of task we might want to script." \
            "Sometimes we need to repeat things. For that," \
            "we need to use a ${ITALICS}loop${NORMAL}."
    echo ""
    echo "Bash has a stunning number of loop variations:"
    echo -e "  ${GREEN}+${NORMAL} while    : Repeat based on a condition."
    echo -e "  ${GREEN}+${NORMAL} until    : Repeat based on the negate of condition."
    echo -e "  ${GREEN}+${NORMAL} for-in   : Repeat the loop for each word. Think 'for-each'."
    echo -e "  ${GREEN}+${NORMAL} for (()) : Repeat with counter. C style loop."
    echo -e "  ${GREEN}+${NORMAL} select   : Interactive switch-like loop."
    echo ""
    echo -e "Hopefully this is not your first time of hearing loops and" \
            "nor is it the last because I'm only going to teach you the one that is" \
            "arguably the most used in scripts: the for-in.${YELLOW}"
    echo "for my_var in cat dog bat; do"
    echo "    echo --"
    echo "    echo \$myvar"
    echo "done"
    echo -e "${NORMAL}"
    echo -e "Go ahead, try it!" \
            "It will run every command between the '${YELLOW}do${NORMAL}' and" \
            "the '${YELLOW}done${NORMAL}' with \$myvar" \
            "taking up the value of each word."
    echo ""
    echo "You are one command away from being able to pull of a trick which I'm sure" \
         "will come handy in the future time to time."
    echo -e "${YELLOW}  $ mv <old_name> <new_name>${NORMAL}"
    echo -e "With mv you can '${BOLD}M${NORMAL}o${BOLD}V${NORMAL}e' files." \
            "You only have to specify the current name and the new one."
    echo ""
    echo -e "${BLUE}# Files with the name nt_NUMBER have been created." \
            "Rename each to note_NUMBER!"
    echo -e "Remember what you have learned about globs and expansions!${NORMAL}"
}

function hint() {
    echo -e "If you mess up, you can regenerate the files with" \
            "'${YELLOW}initialize_control_task${NORMAL}'."
}

function validate() {
    shopt -s nullglob
    if [ -z "$(echo nt_*)" ]; then
        for i in $(seq 1 1 100); do
            ! [ -e "note_$i" ] && return 0
        done
        unset DUMMY_FILES_CREATED
        return 1
    fi
}
