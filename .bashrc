#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="${PATH}:~/.bin"; export PATH

alias l='ls -lhF --color=auto --group-directories-first'
alias ls='ls -lhF --color=auto --group-directories-first'
alias cd..='cd ..'
alias ..='cd ..'
alias mc='. /usr/lib/mc/mc-wrapper.sh'
alias pacman='sudo pacman'
alias halt='sudo halt'
alias reboot='sudo reboot'
alias df='df -h'
alias fixvb='sudo /etc/rc.d/vboxdrv setup'
alias vxp='VirtualBox --startvm WinXP'
alias update-vboxdrv='sudo update-vboxdrv'
alias fah='cat /opt/fah/foldingathome/FAHlog.txt'

# load source files in ~/.bash
for file in ~/.bash/{git-completion.sh,prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file

export CLASSPATH=".:$HOME/.java/deployment/ext/*"
export EDITOR="mcedit"
export EDITORCMD="subl3 %f:%l"
export GPGKEY=2D51A44C
export CHROOT=$HOME/chroot

# Use colored grep output.
# Matches are bold blue:
export GREP_COLOR="1;34"
alias grep='grep -n --color=auto'

# Use colored display in man pages.
# (Requires "DEFINE  pager  less -Rs" in /etc/man_db.conf)
# These stand out better on a white background Xterm.
# - blinking on: magenta
#export LESS_TERMCAP_mb=$'\E[35m'
# - bold on: red
#export LESS_TERMCAP_md=$'\E[31m'
# - all attributes off
#export LESS_TERMCAP_me=$'\E[0m'
# - exit standout mode
#export LESS_TERMCAP_se=$'\E[0m'
# - begin standout mode (e.g. status line): bold yellow on blue
#export LESS_TERMCAP_so=$'\E[01;44;33m'
# - exit underline mode
#export LESS_TERMCAP_ue=$'\E[0m'
# - begin underline mode: blue
#export LESS_TERMCAP_us=$'\E[34m'

# Use colored prompts:
#
# - With terminal indicator
#PS1="\[\e[0;35m\]\l-\u:\[\e[0;34m\]\w\[\e[0;35m\]\$\[\e[0;0m\] "
# - Without terminal indicator
#PS1="\[\e[0;35m\]\u:\[\e[0;34m\]\w\[\e[0;35m\]\$\[\e[0;0m\] "
#
PS2="\[\e[0;35m\]>\[\e[0;0m\] "
PS3="\[\e[0;35m\]-\[\e[0;0m\] "
PS4="\[\e[0;35m\]+\[\e[0;0m\] "

# Make sure less leaves the XTerm screen uncleared
export LESS="-RMX"

# History
# Do not automatically execute ! commands.
shopt -s histverify
