if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/linuxbrew/.linuxbrew/bin/
fish_add_path -p $HOME/.cargo/bin
fish_add_path -p $HOME/bins

set -U fish_greeting
set -U EDITOR nvim
set -Ux PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig

alias ls "lsd"
