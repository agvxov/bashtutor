function description() {
    echo "Enter 'echo goodbye world'"
}

function hint() {
    echo also with your keyboard
}

function validate() {
    if [ "$*" == "echo goodbye world" ]; then
        return 1
    fi
}
