function description() {
    echo "Enter 'echo hello world'"
}

function hint() {
    echo with your keyboard
}

function validate() {
    if [ "$*" == "echo hello world" ]; then
        return 1
    fi
}
