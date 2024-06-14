alias surprise_alias='echo good job'

function description() {
    if [ -n "${FMT_WIDTH}"]; then
        if [ $LINES > 80 ]; then
            FMT_WIDTH=80
        else
            FMT_WIDTH=$(($LINES - 4))
        fi
    fi
    function myfmt () {
        fmt -w $FMT_WIDTH <(echo -e "$1") | sed 's/^/    /'
        echo ""
    }

    echo "There are various types of programs available to you, namely:"
    echo ""

    echo -e "${GREEN}Builtins${NORMAL}"
    D="\
Bash has some basic commands built into it, \
such as: cd (change directory), echo (write output), and so on. \
They can be thought of as functions that are already provided."
    myfmt "$D"

    echo -e "${GREEN}Aliases${NORMAL}"
    D="\
An alias is a way of shortening a command. \
They are only used in interactive shells and not in scripts. \
An alias is a word that is mapped to a certain string. \
Whenever that word is used as a command name, \
it is replaced by the string before executing the command. \
Aliases are controlled by the '${YELLOW}alias${NORMAL}' builtin."
    myfmt "$D"

    echo -e "${GREEN}Keywords${NORMAL}"
    D="\
Keywords are like builtins, \
with the main difference being that keywords are actually Bash syntax \
and may be parsed using special rules. \
For example, [ is a Bash builtin, while [[ is a Bash keyword; \
they are both used to test for a variety of conditions. \
Here we try to use them to compare the words \"a\" and \"b\" lexicographically:
  $ [ a < b ]
  -bash: b: No such file or directory
  $ [[ a < b ]]
The first example returns an error because, as usual, \
Bash treats < as a file redirection operator and attempts to redirect \
the nonexistent file b to the command [ a ]. \
The second example works because Bash parses words between [[ and ]] \
using different rules that don't use < for redirection."
    myfmt "$D"

    echo -e "${GREEN}Executables${NORMAL}"
    D="\
The last kind of command that can be executed by Bash is an executable. \
(Executables may also be called external commands or applications.) \
Executables are commonly invoked by typing only their name. \
This can be done because a pre-defined variable makes known to Bash \
a list of common, executable, file paths. \
This variable is called PATH. \
It is a set of directory names separated by colons (e.g./usr/bin:/bin). \
When a command is specified (e.g. myprogram, or ls) \
without a file path (and it isn't an alias, function, builtin or keyword), \
Bash searches through the directories in PATH. \
The search is done in order, from left to right, \
to see whether they contain an executable of the command typed. \
If the executable is outside a known path... \
the executables file path will need to be defined. \
For an executable in the current directory, use ./myprogram; \
if it's in the directory /opt/somedirectory, use /opt/somedirectory/myprogram."
    myfmt "$D"

    echo -e "${GREEN}Scripts${NORMAL}"
    D="\
Scripts are bash commands in a file. We will learn about them in more detail later."
    myfmt "$D"

    unset D

    echo -e "${BLUE}# I have defined a surprise alias for you. Run it to continue!${NORMAL}"
}

function hint() {
    echo "Remember what you learned about documentation and apply it to the 'alias' builtin."
}

function validate() {
    if [  "$1" == "surprise_alias" ]; then
        unset FMT_WIDTH
        unalias surprise_alias
        return 1
    fi
}
