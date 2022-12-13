 # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
autoload -Uz compinit 
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# Save most-recent 1000 lines
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands

setopt always_to_end # move cursor to end if word had one match

bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

export MCFLY_FUZZY=true
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:/home/.cargo/bin:/home/bins:$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/.nix-profile/bin"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PKG_CONFIG_PATH="/usr/lib/pkgconfig:/usr/share/pkgconfig"

export FZF_DEFAULT_OPTS=" \
--color \"bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8\" \
--color \"fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc\" \
--color \"marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8\""

export XCURSOR_SIZE=24
export XCURSOR_THEME="breeze_icons"
export DOCKER_CLI_EXPERIMENTAL=enabled
alias ls='exa -a --icons --group-directories-first'
alias neofetch='fastfetch'
alias cd='z'
alias yay='paru'

eval "$(mcfly init zsh)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(zoxide init zsh)"3

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

# zinit ice from"gh-r" as"command" atload'eval "$(starship init zsh)"'
# zinit load starship/starship

# completion stuff
zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions \
  sbin romkatv/zsh-prompt-benchmark

# zstyle ":fzf-tab:*" fzf-flags --height=70% \
# --color "bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8" \
# --color "fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc" \
# --color "marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
