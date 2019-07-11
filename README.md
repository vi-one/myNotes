# Notes #

<!-- TOC -->
- [Notes](#Notes)
  - [Mac Setup](#Mac-Setup)
  - [Vi Editor](#Vi-Editor)
  - [Sublime](#Sublime)
- [Docker](#Docker)
  - [Bash (Bourne Again Shell)](#Bash-Bourne-Again-Shell)

## Mac Setup ##

1. Check you're admin
   - Spotlight >> Users & Groups >> Password = Check Allow user to admin this computer
   - Run following on Terminal `sudo plutil -p /var/db/dslocal/nodes/Default/users/root.plist | grep -A 2 passwd`
   - Below output means root user is not enabled.
  
    ```sh
     "passwd" => [
        0 => "*"
    ]

    ```

   - Below output means root user is enabled.
  
    ```sh
   "passwd" => [
        0 => "********"
    ]
    ```

   - To enable root user, Spotlight >> Directory Utility = Click on the lock at the bottom to unlock it. Edit menu >> Enable Root User

2. Customize  Mac
   1. Finder
        - Show Finder path in Status bar: View » Show Path Bar
        - Add following into left-side Favorites bar = Macintosh HD, Repos.
        - Show hidden files and folders using Terminal commands:

        ```sh
        defaults write com.apple.finder AppleShowAllFiles YES
        Killall Finder
        // Then, restart the Finder by holding down Option+Control and clicking the Finder icon in the Dock, then choose Relaunch
        ```

   2. Trackpad

       - Spotlight >> Trackpad >> Point & Click = Check Tap to Click
       - Spotlight >> Trackpad >> Point & Click = Un-check Force Click and Haptic Feedback
       - Spotlight >> Trackpad >> Point & Click = Increase Tracking Speed

   3. Keyboard
       - Spotlight >> Keyboard >> Keyboard = Check Use F1,F2  keys as standard keys
       - Spotlight >> Keyboard >> Shortcuts = Double click Show Desktop and hit Cmd+D
  
   4. Desktop
       - Spotlight >> Desktop & Screensavers >> Screen Saver = Check 'Show with clock'
       - Spotlight >> Desktop & Screensavers >> Screen Saver => Hot Corners
         - > Left Bottom = Desktop
         - > Right Bottom = Screen Saver

   5. Locking

        - Spotlight >> Keychain Access >> Preferences = Check 'Show keychain status in menu bar'.
   6. Screen Saver

        - From Finder >> Go To >> `/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/` (Sierra)
        - Drag and Drop ScreenSaveEngine app on Dock.
        - High Sierra = `/System/Library/CoreServices/`
3. Enterprise Software List

    - X Code
    - Slack

4. Import [bash profile](./bash_profile)
5. Development Tools & Settings

    - VS Code
    - iTerm2
    - Sublime
    - SnagIt
    - Spectacle
    - [Date-O](https://shauninman.com/archive/2016/10/20/day_o_2_mac_menu_bar_clock)
6. Development CLI Packages

    - nvm : `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash`
    - node : `nvm install v8.10`
7. Start-up Programs

    - Spotlight >> Users & Groups >> Login Items = Add apps
    ![image](https://user-images.githubusercontent.com/10359853/60838375-8b8ec000-a198-11e9-9475-44c6f34cc77e.png)

8. Productivity Tips

    | Command                  | Purpose                                 |
    | ------------------------ | --------------------------------------- |
    | CMD+Ctrl+F               | Full Screen                             |
    | Spotlight                | Find app, use as calculator, dictionary |
    | File delete              | Backspace delete                        |
    | Back Delete              | del                                     |
    | Forward delete           | fn del                                  |
    | Capture Screen           | CMD+SHIFT+4                             |
    | Move Up/Down the Folders | CMD + Up/Down                           |
    | CMD                      | Full                                    |
    | CMD                      | Full                                    |

***

## Vi Editor ##

When editor is launched, it is COMMAND mode. When you invoke insert command (i), it is in INSERTION/EDIT mode.

**Command Mode:**
- Quit = :q
- Save and Exit = :wq
- Undo and Exit = :q!
- Delete all content = :1, $d

**Edit Mode**
- Insert before cursor (i), Insert before line (I)
- Go to the end of line = $
- Go to the top (H), middle (M), end (L) of the page.

**Deleting**
- Delete current line (dd)


***


## Sublime ##

1. To select a block of positions in multiple lines:
  Press ALT and select area using mouse cursor

2. Find a match after the given word
```sh
// This will pick all the text that is after the word = BookTitle
(?<=BookTitle).*?(?=\s)   
```

***

# Docker

1. Commands

    | purpose                    | Purpose                                                                                                          |
    | -------------------------- | ---------------------------------------------------------------------------------------------------------------- |
    | Look into failed container | docker ps </br> `docker commit 78c3bb2a2e5c my-broken-container && docker run -it my-broken-container /bin/bash` |
    | asd                        | asd                                                                                                              |

***

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

## bash_profile ##


```sh

# ----------------------------------------------------------------------------------------
#               1.  ENVIRONMENT VARIABLES
# ----------------------------------------------------------------------------------------
# nvm
export NVM_DIR="/Users/jsh371/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# ----------------------------------------------------------------------------------------
#               2.  BEAUTIFUL TERMINAL PROMPT & CUSTOM COMMANDS
# ----------------------------------------------------------------------------------------
export PS1="\n\[\033[0;35m\]\D{%m/%d-%T}=>\[\e]0;\w\a\]\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]:\[\033[1;35m\]\W\[\033[0m\]=>$ "

alias path='echo -e ${PATH//:/\\n}'	        # path:         Echo all executable Paths
alias reload='source ~/.bash_profile'		# Reload the Bash Profile after making a change
alias ll='ls -FGlAhp'				# Improved listing  
alias cls="clear"
alias ~="cd ~"                           	# Go Home
alias clasall="cat /dev/null > ~/.bash_history && history -c"
cd() { builtin cd "$@"; ll; }            	# Always list the dir contents when 'cd'
alias cd..='cd ../'                      	# I don't like that shell needs a space
alias ..='cd ../'                        	# Go back 1 directory level
alias ...='cd ../../'                    	# Go back 2 directory levels
alias f='open -a Finder ./'              	# Opens current directory in MacOS Finder
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias qfind="find . -name "                 	# Quickly search for file

# lr: Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# extract: Extract most know archives with one command
  extract () {
    if [ -f $1 ] ; then
        case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
            esac
        else
            echo "'$1' is not a valid file"
        fi
}

# ----------------------------------------------------------------------------------------
#               NETWORKING
# ----------------------------------------------------------------------------------------

alias myip='curl ip.appspot.com'                    # Public facing IP Address
alias openPorts='sudo lsof -i | grep LISTEN'        # All listening connections

myhost() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }
    
 ```
 ***
