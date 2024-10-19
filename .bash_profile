alias ls='ls -Gh'
alias ll='ls -alhG'

#Write history from all terminal tabs to the same file so you
#don't lose history when using multiple tabs, see https://askubuntu.com/a/80380
export PROMPT_COMMAND='history -a'

#Terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]:\[\e[91m\]$(parse_git_branch)\[\033[m\]$ '
