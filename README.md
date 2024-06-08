# Bashtutor
> Utility to interactively teach CLIs, command line tasks and Bash itself.

### Usage
Bashtutor works on module bases.
Each module may teach one specific thing or a broader concept.
The initialization file of the module must be passed from the cli:
```sh
$ bashtutor test_module/task_list.sh
```
Afterwards and interactive shell is spawned which will monitor the user's
progress _(offline, obviously)_ through the module,
expressed as individual tasks.

Here is an example:
```sh
Welcome! You are running bashtutor v1.0.
The currently loaded module is 'test_module/task_list.sh' with 2 tasks.
You may run 'task' or 'hint' anytime to display  the current task agian or a help message respectedly.

Enter 'echo hello world'
(bashtutor) $ echo helo world
helo world
(bashtutor) $ hint
with your keyboard
(bashtutor) $ echo hello world
hello world
Enter 'echo goodbye world'
(bashtutor) $ echo goodbye world
goodbye world
Module completed. Thanks for flying bashtutor!
```

### Creating a module
A module consists of a _task file list_ and an arbitrary number of _task files_.
For clarity's sake, both of these must be written in bash.

Bellow is a detailed explaination,
but consulting `test_module/` might get you up to speed faster.

#### Task file list
The task file list defines what tasks belong to the module
and in what order they should be executed.
This is done by appending file names to the array variable `${BASHTUTOR_TASK_FILE_LIST}`.
Each task file name is assumed to be relative to the task file list.
You may keep your tasks files in an arbitrary structure inside your module.

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
will detirate the user experience.
In such case you should set some symbols
which **will** persist and check for their existance/state.

##### desciption
This function is run once when the task is initiated
or whenever the user calls `task`.

This function *should* print some message to the user which makes it clear
what he should be doing

##### hint
This is a function is run only when the user explicitly asks for a hint.

This function *should* print some message which can help to user accomplish his task.

##### validate
This function is called after every command entered.
The last command the user has entered is passed as the arguments.
You may inspect each bit with `$<int>` or the whole command as one with `$*`
Since task files are sourced, all variable the user's shell has is available to you.
You may use this fact to perform arbitrary checks,
for example inspect files in `$PWD`.
To make a task considered complete and to move on the the next one, return 1.
