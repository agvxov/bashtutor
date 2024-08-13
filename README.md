# Bashtutor
> Easily extendable utility to interactively showcase or teach CLIs, command line tasks, workflows and Bash itself.

### Usage
Bashtutor works on module bases.
Each module may teach one specific thing or a broader concept.
Either a convention abiding module's path or the initialization file
must be passed from the cli:
```sh
$ bashtutor test_module/
```
Afterwards an interactive shell is spawned which will monitor the user's
progress _(offline, obviously)_ throughout the module,
expressed as individual tasks.

Here is an example:
```sh
Welcome! You are running bashtutor v1.2.
The currently loaded module is 'test_module/' with 2 tasks.
You may run 'task' or 'hint' anytime to display the current task again or a help message respectably.

Enter 'echo hello world'
(bashtutor) $ echo hello world
hello world

(1/2)

Enter 'echo goodbye world'
(bashtutor) $ echo goodbye world
goodbye world
Module completed. Thanks for flying bashtutor!
```

### Bash module
The Bash module (`bash_module/`) is provided both as a proof of concept and
legit learning material for Bash.
Feel free to take it on a test ride.

### Creating a module
A module consists of a _task file list_ and an arbitrary number of _task files_.
For clarity's sake, both of these must be written in bash.

Bellow is a detailed explanation,
but consulting `test_module/` might get you up to speed faster.

#### Task file list
The task file list defines what tasks belong to the module
and in what order they should be executed.
This is done by appending file names to the array variable `${BASHTUTOR_TASK_FILE_LIST}`.
Each task file name is assumed to be relative to the task file list.
You may keep your tasks files in an arbitrary structure inside your module.
The default task file name is `task_list.sh` and is automatically recognized.
This has the advantage that the user will only have to pass the module directory,
however it changes nothing else as long as the task file is passed explicitly.

#### Task files
Each task file must define the following functions:
+ description
+ hint
+ validate

Task files are sourced,
they operate in the exact same shell as user is using.

You may define any number of helper functions,
but know that if you do not `unset` them at the end of the script
they will leak into the user's "namespace" and be exposed to him.

Commands outside of functions are in fact executed,
if you want to do that for some reason,
you are free to do so,
however task files are evaluated after each command,
this means that adding expensive operations
will deteriorate the user experience.
In such case you should set some symbols
which **will** persist and check for their existence/state.

##### description
This function is run once when the task is initiated
or whenever the user calls `task`.

This function *should* print some message to the user which makes it clear
what he should be doing

##### hint
This is a function is run only when the user explicitly asks for a hint.

This function *should* print some message which can help the user accomplish his task.

##### validate
This function is called after every command entered.
The last command the user has entered is passed in the arguments.
You may inspect each bit with `$<int>` or the whole command as one with `$*`.
Since task files are sourced, all variables of the user's shell are available to you.
You may use this fact to perform arbitrary checks,
for example inspect files in `$PWD`.
To make a task considered complete and to initiate moving on to the next one, `return 1`.

#### Variables
The following variables will be available to you inside module scripts:
```
BASHTUTOR_R       : the return value of the user's last command
BASHTUTOR_PS1     : the primary prompt bashtutor uses
BASHTUTOR_VERSION : version number in 'v<MAJOR>.<MINOR>' notation
```

Along side with the following, which all represent ANSI escape sequences:
+ `NORMAL`
+ `ITALICS`
+ `BOLD`
+ `RED`
+ `GREEN`
+ `YELLOW`
+ `BLUE`
+ `MAGENTA`
+ `CYAN`

**NOTE:** WHITE and BLACK are purposefully not provided
to discourage the usage of colors which could be hard to see depending on the
underlying terminal.
