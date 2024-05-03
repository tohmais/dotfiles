if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/linuxbrew/.linuxbrew/bin/
fish_add_path -p $HOME/.cargo/bin
fish_add_path -p $HOME/bins
fish_add_path -p $HOME/bin
fish_add_path -p $HOME/.local/bin
fish_add_path -p $HOME/.emacs.d/bin
fish_add_path -p /usr/local/bin
fish_add_path -p $HOME/.nix-profile/bin

set -U fish_greeting
set -U EDITOR vim
set -Ux PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig

alias ls "exa -a --icons --group-directories-first"
alias neofetch "fastfetch"
alias yay "paru"
fish_add_path /home/callum/.spicetify

pyenv init - | source
zoxide init --cmd cd fish | source