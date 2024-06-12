function description() {
    echo -e "Functions are a special type of program that you can define right inside bash." \
            "They are very nifty inside Bash scripts."\
            "They are blocks of commands," \
            "much like normal scripts you might write," \
            "except they don't reside in separate files," \
            "and they don't cause a separate process to be executed." \
            "However, they take arguments just like scripts. Take this for example:${YELLOW}"
    echo "  $ function sum() {"
    echo '  >   echo "$1 + $2 = $(($1 + $2))'
    echo "  > }"
    echo -e "${NORMAL}"
    echo -e "${CYAN}Note:${NORMAL} while most commands you run terminate at the first new line," \
            "Bash is perfectly capable of reading multiline input and determining" \
            "when the input is going to be multiline (or should be anyways)."
    echo ""
    echo -e "This will do absolutely nothing when run." \
            "This is because it has only been stored in memory," \
            "much like a variable, but it has not yet been called." \
            "To run the function, you would do this:${YELLOW}"
    echo "  $ sum 1 4"
    echo "  1 + 4 = 5"
    echo -e "${NORMAL}"
    echo "Amazing! We now have a basic calculator," \
         "and potentially a more economic replacement for a five year-old."
    echo ""
    echo -e "Inside functions you get access to a special program: '${YELLOW}return${NORMAL}'." \
            "It can be used to make specify the functions exit value by passing" \
            "it as an argument." \
            "If you do not use return, the function's exit value will be the same as the" \
            "last executed commands exit value."
    echo ""
    echo -e "${BLUE}# Find a way to execute a command with an exit value of 231.${NORMAL}"
}

function hint() {
    echo "function a() { return 231; }; a"
}

function validate() {
    if [ "$BASHTUTOR_R" == 231 ]; then
        return 1
    fi
}
