
## Bash (Bourne Again Shell) ##

- CLI works on REPL (Read-Evaluate-Print Loop)
- Shell sits between the user and the computer. What the user types goes into the shell; it figures out what commands to run and orders the computer to execute them.
- Bash is Linux Shell - Bourn Again SHell. It was derived from the shell developed by Stephen Bourne.
- A shell is a program whose primary purpose is to read commands and run other programs.
- The shell's main advantages are its high action-to-keystroke ratio, its support for automating repetitive tasks, and that it can be used to access networked machines. 
- The shell's main disadvantages are its primarily textual nature and how cryptic its commands and operation can be.

1. Basic Commands

    | Command                                               | Purpose                                    |
    | ----------------------------------------------------- | ------------------------------------------ |
    | env                                                   | ------                                     |
    | export $PATH                                          | ------                                     |
    | cd ~                                                  | ------                                     |
    | pwd                                                   | ------                                     |
    | whoami                                                | ------                                     |
    | sudo -i                                               | ------                                     |
    | rm -rf <dir>                                          | ------                                     |
    | history                                               | ------                                     |
    | cat /dev/null > ~/.bash_history && history -c && exit | Clear the history and exit                 |
    | mac <cmd>                                             | To learn the new command, look into manual |
    | q                                                     | ------                                     |
2. Keyboard Strokes

    - Go to the beginning of the command = ^A
    - Go to the end of the command = ^E
    - Exit the command window => Control + D
3. Tab Completion

    `echo "set completion-ignore-case On" >> ~/.inputrc`
4. Navigation

     | Command | Purpose |
     | ------- | ------- |
     | .       | ------  |
     | ..      | ------  |
     | ~       | home    |
     | -       | last    |
     | /       | root    |
5. Listing

    | Command | Purpose                              |
    | ------- | ------------------------------------ |
    | ls      | ------                               |
    | ls -F   | Flags the directories with ending \  |
    | ls -t   | listing ordered by last changed time |
6. File Operations

   - create new file => vi file.txt
   - create a directory => mkdir
   - delete file => rm -r file.txt
   - move file => mv source destination
   - copy the file => cp source destination

7. Pipes & Filters

     | Command     | Purpose |
     | ----------- | ------- |
     | wc          | ------- |
     | sort -n     | ------- |
     | wc -l *.pdb | sort -n | head -1 | head command reads the first n lines from the top |
     | wc          | ------- |
    - wc => word count i.e gives number of lines, number of words, flag -c to get the number of characters

8. Loops

    ```sh
    for file_name in *.txt
    do
    echo mv $file_name old_$file_name
    done

    ```

     - Do not use spaces, quotes, or wildcard characters such as '*' or '?' in filenames, as it complicates variable expansion.
     - The space after/before = sign on shell prompts the shell to read the input as command. 

        - Ex: count = 4      ===> -bash: count: command not found.
        - count=4        ===> count variable is initialized to 4


9. Search

     | Command                    | Purpose                                               |
     | -------------------------- | ----------------------------------------------------- |
     | grep “textToFind” filename | By default, it matches the case                       |
     | grep -v                    | inverse the match (lines that don’t contain the word) |

10. Scripting

    - nano is amazing shell script editor = https://www.youtube.com/watch?v=45KO4KO2DTo
    - Create a shell script using nano:

        - nano middle.sh
        - Write the command `head -10 some.file | tail -5`
        - Then execute the shell script `bash middle.sh`
        - You can write the just used command and create a shell script file using them $ `history | tail -4 | colrm 1 7 > redo-figure-3.sh`
        - `colrm 1 7` => This is “column remover” command. Its parameters are the range of characters to strip from its input.
    - Save commands in files (usually called shell scripts) for re-use.
    - bash filename runs the commands saved in a file. refers to all of a shell script's command-line parameters. $1, $2, etc., refer to specified command-line parameters.
11. Table of Commands
     | Command                    | Purpose |
     | -------------------------- | ------- |
     | `du -h /var --max-depth=1` | ------- |

***