
# my personal dotfiles version 3: hyprland edition!

![https://www.youtube.com/watch?v=dQw4w9WgXcQ](/.config/sway/linux-screenshot-3.png)

> hey. these are my personal dotfiles for my linux system, version 3!  
> they're probably buggy on your computer right now, but i will be making them better over time.  
> i might collect dependencies and make an auto-install script in the future  
> here's some highlights.

## wayland compositor cross-compatability

* this config works basically identically across the [`sway`](https://github.com/swaywm/sway), [`river`](https://github.com/riverwm/river), and [`hyprland`](https://github.com/hyprwm/Hyprland) wayland compositors.
* sane defaults with basically identical keybinds across all three compositors.
* compatible with both `zsh` and `fish`, too! replace `.zshrc` with `.zshrc_fish` to swap shells.

### NOTES:

* read the note in the waybar config file if you're using river.  
* remember to compile waybar with the `experimental` flag for `hyprland` support.
## neovim

* lazy loading via [`packer.nvim`](https://github.com/wbthomason/packer.nvim)
* code completion and snippets via [`coq_nvim`](https://github.com/ms-jpq/coq_nvim), with language server installation using [`nvim-lsp-installer`](https://github.com/williamboman/nvim-lsp-installer)
* fuzzy finding via [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
* file tree using [`chadtree`](https://github.com/ms-jpq/chadtree)
* [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim), [`dashboard-nvim`](https://github.com/glepnir/dashboard-nvim), and [`bufferline.nvim`](https://github.com/akinsho/bufferline.nvim) to make the editor look pretty

## other

* custom catppuccin css on `eww` and `waybar`
* zsh config that uses `zinit turbo` and `powerlevel10k` for good speeds
* uses kitty and fira code nerd font for icons and ligatures

## credits

* eww widget based on modified code from [these dotfiles](https://github.com/n0tsteve/glorious-dots)
* neofetch theme from this [repository](https://github.com/Chick2D/neofetch-themes)
* official [catppuccin](https://github.com/catppuccin/catppuccin) ports used wherever possible