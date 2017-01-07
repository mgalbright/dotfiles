#I've excluded some settings, e.g. PATH
#for anaconda, homebrew, etc. This doesn't meaningfully
#transfer between systems.


#Use GNU compilers not Clang
alias gcc="gcc-6"
alias g++="g++-6"

#Make the terminal colorful:
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#Tell RStudio to use R from Anaconda
export RSTUDIO_WHICH_R="/Users/michael/anaconda3/bin/R"
launchctl setenv RSTUDIO_WHICH_R $RSTUDIO_WHICH_R


# Added for Cordova to build android apps (java)
# Note: in 1.8, the 8 refers to java 8
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export ANDROID_HOME="/Users/michael/Library/Android/sdk"
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH="$PATH:/Users/michael/Library/Android/sdk"
