# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1="%{$reset_color%}("
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}✖︎%{$reset_color%})"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}●%{$reset_color%})"

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="${YS_VCS_PROMPT_DIRTY}"
ZSH_THEME_GIT_PROMPT_CLEAN="${YS_VCS_PROMPT_CLEAN}"

# Prompt format: \n # USER at MACHINE in DIRECTORY on git:BRANCH STATE [TIME] \n $
# [%D{%a %b %d %Y}  %T]
#[%D{%c}]

if [ $UID -eq 0 ]; then
PROMPT="
%{$terminfo[bold]$fg[red]%}%n@%m$fg[white]:$fg[yellow]${current_dir}%{$reset_color%} \
${git_info} \

%{$terminfo[bold]$fg[red]%}# %{$reset_color%}"
else
PROMPT="
%{$terminfo[bold]$fg[cyan]%}%n$fg[magenta]@$fg[green]%m$fg[white]:$fg[yellow]${current_dir}%{$reset_color%} \
${git_info} \

%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
fi
