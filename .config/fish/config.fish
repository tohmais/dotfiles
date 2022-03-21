if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/linuxbrew/.linuxbrew/bin/
fish_add_path -p $HOME/.cargo/bin

set -U fish_greeting
set -U EDITOR nvim
set -Ux PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig
set -U NVIM_CONFIG_PATH $HOME/.config/nvim
set -Ux XDG_CONFIG_HOME $HOME/.config
set -xg LUA_PATH "$XDG_CONFIG_HOME/nvim/?.lua"

starship init fish | source