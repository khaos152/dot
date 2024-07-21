# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/%user%/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


bindkey  "^[[H"    beginning-of-line   # home
bindkey  "^[[F"    end-of-line         # end
bindkey  "^[[3~"   delete-char         # del
bindkey  "^[[1;5C" emacs-forward-word  # ctrl + r
bindkey  "^[[1;5D" emacs-backward-word # ctrl + l
bindkey  "^[[3;3~" delete-word         # alt + del 

eval $(thefuck --alias)

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
pokemon-colorscripts -r -s --no-title
