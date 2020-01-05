autoload -U colors && colors
PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~ %{$reset_color%}$%b "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $HOME/.config/zsh/zcompdump-$ZSH_VERSION

_comp_options+=(globdots)

HISTSIZE=1000
HISTFILE=$HOME/.config/zsh/.zsh_history
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

export PATH="$PATH:$HOME/go/bin:$HOME/.yarn/bin"

alias mpdc=ncmpcpp
alias f=ranger
alias ls='ls --color=always'
alias vim=nvim
unsetopt BEEP
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

