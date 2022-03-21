if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path -p /home/linuxbrew/.linuxbrew/bin/
fish_add_path -p $HOME/.cargo/bin

set -U fish_greeting
set -U EDITOR nvim
set -Ux PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/share/pkgconfig
set -U NVIM_CONFIG_PATH ~/.config/nvim

starship init fish | source