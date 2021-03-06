# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://www.gitlee.com
# Mar 2 2017 darcylee

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
vcs_status() {
    if [[ $(whence in_svn) != "" ]] && in_svn; then
        svn_prompt_info
    # comment for fast respon
    #elif [[ $(whence in_hg) != "" ]] && in_hg; then
    #    hg_prompt_info
    else
        git_prompt_info
    fi
}

RC_VCS_PROMPT_PREFIX1="%{$fg[white]%}("
RC_VCS_PROMPT_PREFIX2="%{$fg[cyan]%}"
RC_VCS_PROMPT_SUFFIX="%{$reset_color%}"
RC_VCS_PROMPT_DIRTY=" %{$fg_bold[red]%}x%{$reset_color%}%{$fg[white]%})%{$reset_color%}"
RC_VCS_PROMPT_CLEAN=" %{$fg_bold[green]%}o%{$reset_color%}%{$fg[white]%})%{$reset_color%}"

# Git info.
# local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_TYPE="%{$fg[green]%}git%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="${RC_VCS_PROMPT_PREFIX1}${ZSH_THEME_GIT_PROMPT_TYPE}: ${RC_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$RC_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="${RC_VCS_PROMPT_DIRTY}"
ZSH_THEME_GIT_PROMPT_CLEAN="${RC_VCS_PROMPT_CLEAN}"

# Svn info.
ZSH_THEME_SVN_PROMPT_TYPE="%{$fg[green]%}svn%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_PREFIX="${RC_VCS_PROMPT_PREFIX1}${ZSH_THEME_SVN_PROMPT_TYPE}: ${RC_VCS_PROMPT_PREFIX2}"
ZSH_THEME_SVN_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_SVN_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
ZSH_THEME_SVN_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN

# HG info.
ZSH_THEME_HG_PROMPT_TYPE="%{$fg[green]%}hg%{$reset_color%}"
ZSH_THEME_HG_PROMPT_PREFIX="${RC_VCS_PROMPT_PREFIX1}${ZSH_THEME_HG_PROMPT_TYPE}: ${RC_VCS_PROMPT_PREFIX2}"
ZSH_THEME_HG_PROMPT_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX
ZSH_THEME_HG_PROMPT_DIRTY=$ZSH_THEME_GIT_PROMPT_DIRTY
ZSH_THEME_HG_PROMPT_CLEAN=$ZSH_THEME_GIT_PROMPT_CLEAN

local vcs_info='$(vcs_status)'

# Date Time
local time_show='$(get_date_time)'

function get_date_time() {
	echo "$FG[110][`date '+%a %b %d, %H:%M'`]%{$reset_color%}"
}

# Prompt format: \n # USER@MACHINE:DIRECTORY(git:BRANCH STATE) [TIME] \n $
if [ $UID -eq 0 ]; then
PROMPT="
%{$terminfo[bold]$fg[red]%}!!! %n$fg[magenta]@$fg[green]%m$fg[white]:$fg[yellow]${current_dir}%{$reset_color%} \
${vcs_info}  ${time_show}\

%{$terminfo[bold]$fg[red]%}# %{$reset_color%}"
else
PROMPT="
%{$terminfo[bold]$fg[cyan]%}%n$fg[magenta]@$fg[green]%m$fg[white]:$fg[yellow]${current_dir}%{$reset_color%} \
${vcs_info}  ${time_show}\

%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
fi
