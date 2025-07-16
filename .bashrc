# .bashrc
# $Check /bin in HOME before other PATH
# $HOME = /Users/sc: 
PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Source global definitions from etc
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# My aliases
alias minilib=". start_minilib && cd ~/Documents/Coding/repos/projects/mini_lib"
alias staticblog=". ./Scripts/start_static_blog && cd ~/Documents/Coding/repos/projects/static_blog"
alias TS="cd /Users/sc/Documents/Coding/repos/TS/"
alias cpsettings=". ~/Scripts/copy_and_update_settings_json"

# LSCOLOR settings 
# see https://web.archive.org/web/20200709152717/http://linux-sxs.org/housekeeping/lscolors.html
# ====================
export CLICOLOR=1
export LSCOLORS=GxFxEDDxbxegedabagacad
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"

#Prompt default \h:\W \u\$  --> MacBook-Pro-6:~ sc$ 
#Escape colors \[\e[0m\]
#https://wiki.archlinux.org/title/Bash/Prompt_customization
export PS1="\[\e[1;31m\]\\W \[\e[1;31m\]\\u\\$ \[\e[0;0m\]"
