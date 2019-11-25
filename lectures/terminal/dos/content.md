# Introduction to the Command Line

* Aka terminal, console, CLI, shell interface, etc.





-
-
## What we'll cover

<p class="fragment fade-up">Command Line Interface</p>
<p class="fragment fade-up">Terminology</p>
<p class="fragment fade-up">Useful commands for navigating and manipulating your file system</p>





-
-
## Some terminology

* Command Line Interface (CLI) - the text-based interface of a computer
* Console - See Command Line Interface
* Terminal - See Console
* Shell - the interactive program that runs on the terminal






-
## CLI Applications on Windows OS
* `Command Prompt` is the name of one of the legacy built-in terminals on Windows operating systems
* `Powershell` has all of the functionality of `Command Prompt` as well as the addition of **scripting language** integration.




-
-
## Getting to Command Prompt
* _Hold_ `Windows` key and press `R` key to launch `Command Runner` application.
* Execute `cmd` from the `Command Runner`
[](./img/command-runer.PNG)








-
-
## Getting Familiar with the Prompt


-
### What the prompt looks like
* Simple examples: `$`, `>`, `>>>` or `->`

* Python Shell:
    * `>>>`

* Linux Terminal:
    * `username@computername:~$`

* OSX Terminal:
    * `computername:~ username$`

* Command Prompt:
    * `C:\Users\Username>`





-
### Executing Commands in Command Prompt
* Commands executed in `macOS` terminal are written using `Bash` syntax.
* Commands executed in `Linux` terminal are written using `Bash` syntax.
    * Can chain commands with semi colon `;`  
        * eg: `echo "hello" ; echo "goodbye"` 

* Commands executed in windows command prompt are written using Disk Operating System `DOS` syntax.
    * Can chain commands with ampersand `&`  
        * eg: `echo "hello" & echo "goodbye"`  


-
### Overcoming the Language Barrier
* `Bash` is a popular default shell on **Linux** and **macOS**.
* `Git Bash` is a package that installs `Bash`, some common `Bash` utilities, and Git on a Windows operating system.







<!-- ---------------------------------------------- -->
<!-- material below this point still needs revision -->
<!-- ---------------------------------------------- -->

-
-
# Navigating the file system


-
### File system structure

* *nix file systems are a tree with a root named `/`  
* Everything is within / or a descendant directory  
* directories are delimited with / character  
* This means we can list the exact position of a dir using its name (called an absolute path)  
* eg: `/usr/bin/`, `/dev/null`, `/Users/loki`

-
### Getting your bearings (basic commands)

* `pwd` - Print Working Directory aka. "Where am I?"  
* `ls` - list directory contents
* `cd` - change directory (explained on next slide)


-
### Moving around

* `cd` - change directory  
    * Must provide a destination as relative or absolute path  
    * From home directory (aka `~` or `/Users/thor`)  
    * change to Desktop (`~/Desktop`) using one of these commands:  
        * `cd Desktop`  
        * `cd /Users/Thor/Desktop`  
        * `cd ~/Desktop`

<!--
#### Optional whiteboard navigation exercise

Ask students to speak commands to:

* find out the current directory
* list files
* get to a goal file
-->

-
### Notable directory names and idioms:

* `/` root directory
* `~` home directory
* `.` this dir
* `..` parent directory
* `-` used with `cd` to mean "go to where I just was" (`cd -` twice and you haven't moved)
* Go up a directory with `cd ..`
* Use these idioms to save time.  
    * from `Documents` use `cd ~/Desktop` to navigate directly to `Desktop` directory in home directory.
    * from `Desktop` use `cd ~/Documents/Music` to navigate directly to the `Music` directory in the `Documents` directory.







-
#### Permissions

`ls -l` shows file permissions

```
-rw-r--r--  1 thor  staff  0 Jan 10 16:04 file
-rw-r--r--  1 root  staff  0 Jan 10 16:04 rootFile
```

-
### Running commands as superuser (aka root)

`sudo` command - Do something as Superuser (requires password)

```bash
$ cat file.txt
cat: file.txt: Permission denied
$ sudo cat file.txt
this is a file
```






-
-
###Creating, copying, moving, renaming, deleting files and directories

-
### Three ways to create a file:

* `touch` command ( `touch newfile` )
* Using a text editor
* Redirect output to a file eg: `echo "hello" >file.txt`

-
###  Create directories with mkdir

* `mkdir dirname`
* Can use paths, but will not crate other dirs implicitly  
  eg: `mkdir dir1/dir2` fails if dir1 doesn't exist.




-
-
### Editing files

* Many terminal-based editors out there. We recommend `VIM`.
* Other options include:
    * emacs - Popular and comparable to VIM in power
    * nano - Very simple, easy for beginners but limited functionality




-
-
### The art of Redirection

* Every command has access to at least three "file descriptors" (input and output sources).
* By default these are all routed to the command line



-
#### Standard file descriptors

* STDIN (fd 0) - Whatever you type
* STDOUT (fd 1) - Normal command output
* STDERR (fd 2) - Error output


-
#### Redirecting File Descriptors

File descriptors can be rerouted using these commands:

* `<` - Redirect STDIN to specified file.
* `>` - Redirects STDOUT to the specified file (if the file exists its contents are erased first)
* `2>` Same as `>` but for STDERR
*  `&>` - Redirects STDERR and STDOUT to the same place
* `>>` or `2>>` - Appends output to the end of the specified file instead of overwriting it
* `|` - redirects the output from the previous command to be the input of the next command.  
  Eg: `ps aux | grep bash`




-
### Backgrounding

Long running tasks can prevent use of the command prompt.  
Run a command in the background with the `&` character eg: `find / -name foo &`  
Send an already running foreground command to the background with `^z` `bg` (`^z` suspends the current job, `bg` resumes it in the background)  
It's often wise to redirect the output when you background something




-
#### Useful examples

* `python -m SimpleHTTPServer &>http.log &` - tiny local web server
