# added by Anaconda3 4.2.0 installer
export PATH="/Users/darpanbiswas/Python3.5/anaconda3/bin:$PATH"

export CLICOLOR=1
export LSCOLORS='ExFxCxDxbxegedabagacad'
export TERM="xterm-256color"

# change ls settings
alias ls='ls -al -G'

#change prompt settings
PS1="\[\e[01;36m\]\D{%Y-%m-%d_%H-%M-%S} ▸ \[\e[01;32m\]\[\e[01;34m\]\u@$(ifconfig | grep "inet " | grep -v 127.0.0. | awk '{print $2}')\[\e[01;32m\] ▸ \[\e[01;35m\]\w\[\e[01;32m\]\n▸"
set listchars=tab:▸\ ,eol:¬,trail:…,extends:…,precedes:…
##
# Your previous /Users/darpanbiswas/.bash_profile file was backed up as /Users/darpanbiswas/.bash_profile.macports-saved_2017-05-20_at_13:53:06
##

# MacPorts Installer addition on 2017-05-20_at_13:53:06: adding an appropriate PATH variable for use with MacPorts.
 export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias cdDRPBX="cd /Users/darpanbiswas/Dropbox/"
alias cdPGM1="cd /Users/darpanbiswas/Dropbox/00_CS/98_ACADEMICS/COURSERA_PROBABILISTIC_GRAPHICAL_METHODS_1"
alias cdPGM2="cd /Users/darpanbiswas/Dropbox/00_CS/98_ACADEMICS/COURSERA_PROBABILISTIC_GRAPHICAL_METHODS_2"
alias cdNN="cd /Users/darpanbiswas/Dropbox/00_CS/98_ACADEMICS/COURSERA_NEURAL_NETWORKS"
alias cdBTCN="cd /Users/darpanbiswas/Dropbox/00_CS/98_ACADEMICS/COURSERA_BITCOIN"
alias cdCD="cd /Users/darpanbiswas/Dropbox/00_CS/00_CODE"
alias cdMCCM="cd /Users/darpanbiswas/Dropbox/01_MCCM/"
alias cdREVEAL="cd /usr/local/lib/node_modules/reveal.js"
alias py2="/Users/darpanbiswas/Python2.7/anaconda2/bin/python"
alias py3="/Users/darpanbiswas/Python3.6/anaconda3/bin/python"
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias rmCP="rm -rf /Users/darpanbiswas/Downloads/CHROME_PROFILE"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias ll="ls -al"
alias fwon="sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1"
alias fwof="sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 0"
alias gr1='grep --color=always -rwnl ./ -e'
alias gr2='grep --color=always -C 3 -rwn ./ -e'


# added by Anaconda2 4.4.0 installer
export PATH="/Users/darpanbiswas/Python2.7/anaconda2/bin:$PATH"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/darpanbiswas/Python3.6/anaconda3/bin:$PATH"

export SAGE_ROOT="/Users/darpanbiswas/SageMath/"

# set key bindings to vi mode
set -o vi

# auto complete with tab and then cycle through option
# bind '"\t":menu-complete'

# set time style
export TIME_STYLE=long-iso

# set EDITOR for crontab
export EDITOR=nano

# set alias for ssh into MCCM Ubuntu Server
alias ssh_mu_02='ssh -i ~/.ssh/mccm_rsa_ubuntumccm02 darpanbiswas@10.10.0.14'

# set imagemagick path for emacs
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
