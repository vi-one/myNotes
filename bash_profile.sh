
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