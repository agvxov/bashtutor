function description() {
    echo "To access the data stored in a variable," \
         "we use parameter expansion." \
         "Parameter expansion is the substitution of a parameter by its value," \
         "which is to say, the syntax tells bash that you want to use" \
         "the contents of the variable." \
         "After that, Bash may still perform additional manipulations on the result." \
         "This is a very important concept to grasp correctly," \
         "because it is very much unlike the way variables are handled" \
         "in other programming languages!"
    echo ""
    echo "To illustrate what parameter expansion is, let's use this example:"
    echo "  $ foo=bar"
    echo "  $ echo \"Foo is \$foo\""
    echo "When Bash is about to execute your code," \
         "it first changes the command by taking your parameter expansion (the \$foo)," \
         "and replacing it by the contents of foo, which is bar." \
         "The command becomes:"
    echo "  $ echo \"Foo is bar\""
    echo "  Foo is bar"
    echo ""
    echo "It is important to understand that parameter expansion causes the \$parameter" \
         "to be replaced by its contents."
    echo ""
    echo -e "${BLUE}# Create a file using the value of \$MYVAR${NORMAL}"
}

function hint() {
    echo "Consider the following case, which relies on an understanding of" \
          "the previous chapter on argument splitting:"
    echo "  $ song=\"My song.mp3\""
    echo "  $ rm \$song"
    echo "  rm: My: No such file or directory"
    echo "  rm: song.mp3: No such file or directory"
    echo "Why did this not work? Because Bash replaced your \$song by its contents," \
         "being My song.mp3; then it performed word splitting;" \
         "and only THEN executed the command. It was as if you had typed this:"
    echo "  $ rm My song.mp3"
    echo "And according to the rules of word splitting," \
         "Bash thought you meant for My and song.mp3 to mean two different files," \
         "because there is white space between them and it wasn't quoted." \
         "How do we fix this?" \
         "We remember to put double quotes around every parameter expansion!"
}

function validate() {
    if ls "$MYVAR" &> /dev/null; then
        return 1
    fi
}
