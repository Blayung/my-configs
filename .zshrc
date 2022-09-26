# Lines configured by zsh-newuser-install
#
HISTFILE=~/.zshistfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/wojtek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f ~/.aliases ]; then
. ~/.aliases
fi

#OWN EXEC
if [ -f ~/.autoexec ]; then
. ~/.autoexec
fi
#setopt AUTO_CD
#export PS1="%F{yellow}<ZSH> %F{green}%n@%m%F{white}:%F{blue}%~ %F{white}"
#export PS1="%K{20}%F{black}   %K{28}%F{20}%K{28}%F{black}  %n@%m %F{28}%K{214} %K{214}%F{black} %~ %K{black}%F{214}%F{white} → "
export PS1="%F{33} %n@%m %F{214} %~%F{white} → "

# Delete key
#typeset -g -A key
#key[Delete]="${terminfo[kdch1]}"
#[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char

bindkey  "^[[P"  delete-char
