function description() {
    echo "tuna" > bowl

    echo "I assume you 'grep'-ed for the option and typed it out into the variable." \
         "This works, but we are lazy computer people, it would never do."
    echo -e "Instead imagine that you could store the output of grep directly in the variable." \
            "This is something ${BOLD}command substitution${NORMAL} is useful for." \
            "The name is telling, it substitutes itself with the output of a command inplace."
    echo " $ SOLUTION=\$(man --help | grep cache)"
    echo ""
    echo "Well um, now the whole line is stored in SOLUTION," \
         "but if you were to write a regex to parse that," \
         "your job security would be ensured, I can guarantee that much."
    echo ""
    echo "Anyway, Its time to make it up for our fuzzy friend, the cat."
    echo ""
    echo -e "${BLUE}# Store the contents of the file 'bowl' in the variable CAT."
}

function hint() {
    echo "You should be able to figure this out..."
}

function validate() {
    if [ "$CAT" == "$(cat bowl)" ]; then
        return 1
    fi
}
