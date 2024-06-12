function description() {
    echo "Conditional execution is useful, but it can get real ugly real fast."
    echo -e "If is a shell keyword that executes a command (or a set of commands)," \
            "and checks that command's exit code to see whether it was successful." \
            "Depending on that exit code, if executes a specific, different," \
            "block of commands.${YELLOW}"
    echo "  $ if true"
    echo "  > then echo \"It was true.\""
    echo "  > else echo \"It was false.\""
    echo "  > fi"
    echo -e "${NORMAL}"
    echo -e "${BLUE}# Create a function called user_function" \
            "which implements XOR logic on \$1 and \$2.${GREEN}"
	echo "  --------------------------"
	echo '  |   $1  |   $2  ||returns|'
	echo "  --------------------------"
	echo "  | false | false || false |"
	echo "  | false | true  || true  |"
	echo "  | true  | false || true  |"
	echo "  | true  | true  || false |"
	echo "  --------------------------"
	echo -e "${NORMAL}"
}

function hint() {
    echo "It was mentioned that you can only return numbers and 0 is considered true."
    echo -e "${YELLOW}"
    echo "function user_function() {"
    echo "  if \$0 && \$1; then"
    echo "    return 1"
    echo "  fi"
    echo "  # I believe you can come up with the rest"
    echo "}"
    echo -e "${NORMAL}"

}

function validate() {
    if declare -f -F user_function &> /dev/null; then
        (
            (
               ! user_function false false &&
                 user_function true false  &&
                 user_function false true  &&
               ! user_function true true
            ) 2> /dev/null || (
               ! user_function 0 0 &&
                 user_function 1 0 &&
                 user_function 0 1 &&
               ! user_function 1 1 ) 2> /dev/null
        ) && return 1
    fi
}
