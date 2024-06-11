function description() {
    function initialize_control_task() {
        for i in $(seq 1 1 100); do
            touch nt_${nt}
        done
    }
    echo "Now you've learned how to make some basic decisions in your scripts." \
         "However, that's not enough for every kind of task we might want to script." \
         "Sometimes we need to repeat things. For that, we need to use a ${ITALICS}loop${NORMAL}."
    echo ""
    echo "Bash has a stunning number of loop variations:"
    echo "  + while    : Repeat based on a condition."
    echo "  + until    : Repeat based on the negate of condition."
    echo "  + for-in   : Repeat the loop for each word. Think 'for-each'."
    echo "  + for (()) : Repeat with counter. C style loop."
    echo "  + select   : Interactive switch-like loop."
    echo ""
    echo "Hopefully this is not your first time of hearing loops and" \
         "nor is it the last because I'm only going to teach you the one that is" \
         "arguably the most used in scripts: the for-in."
    echo ""
    echo "for my_var in cat dog bat; do"
    echo "    echo --"
    echo "    echo \$myvar"
    echo "done"
    echo ""
    echo "Go ahead, try it!" \
         "It will run every command between the 'do' and the 'done' with \$myvar" \
         "taking up the value of each word."
    echo ""
    echo "You are one command away from being able to pull of a trick which I'm sure" \
         "will come handy in the future time to time."
    echo "  $ mv <old_name> <new_name>"
    echo "With mv you can 'MoVe' files." \
         "You only have to specify the current name and the new one."
    echo ""
    echo -e "${BLUE}# Files with the name nt_NUMBERhave been created." \
            "Rename each to note_NUMBER!"
    echo -e "Remember what you have learned about globs and expansions!${NORMAL}"
}

function hint() {
    echo "If you mess up, you can regenerate the files with 'initialize_control_task'."
}

function validate() {
    shopt -s nullglob
    if [ -n "$(echo nt_*)"]; then
        for i in $(seq 1 1 100); do
            ! [ -e "note_$i" ] && return 0
        done
        return 1
    fi
}
