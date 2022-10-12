
# my personal dotfiles version 3: hyprland edition!

[![https://www.youtube.com/watch?v=dQw4w9WgXcQ](/.config/sway/linux-screenshot-3-1.png)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)

> hey. these are my personal dotfiles for my linux system, version 3!  
> they're probably buggy on your computer right now, but i will be making them better over time.  
> feel free to open an issue for me to improve something.  
> here's some highlights.  
> 

## wayland compositor cross-compatability

* this config works basically identically across the [`sway`](https://github.com/swaywm/sway), [`river`](https://github.com/riverwm/river), and [`hyprland`](https://github.com/hyprwm/Hyprland) wayland compositors.
* sane defaults with basically identical keybinds across all three compositors.
* compatible with both `zsh` and `fish`, too! replace `.zshrc` with `.zshrc_fish` to swap shells.

## a neovim config with mild effort

* lazy loading via [`packer.nvim`](https://github.com/wbthomason/packer.nvim)
* code completion and snippets via [`coq_nvim`](https://github.com/ms-jpq/coq_nvim), with language server installation using [`nvim-lsp-installer`](https://github.com/williamboman/nvim-lsp-installer)
* fuzzy finding via [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
* file tree using [`chadtree`](https://github.com/ms-jpq/chadtree)
* [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim), [`dashboard-nvim`](https://github.com/glepnir/dashboard-nvim), and [`bufferline.nvim`](https://github.com/akinsho/bufferline.nvim) to make the editor look pretty

## other features

* custom catppuccin css on `waybar` (now using colours from official port)
* zsh config that uses `zinit turbo` and `powerlevel10k` for decent speeds (~30ms prompt delay)
* custom `fastfetch` theme that's based on [this preset](https://github.com/LinusDierheimer/fastfetch/blob/master/presets/examples/2) with edits to look more like [this theme](https://github.com/chick2d/neofetch-themes/blob/main/normal/config.conf)
* uses kitty and fira code nerd font for icons and ligatures

## potential things in the future

* really nice install script  
* collecting and listing every dependency in the config  
* improving zsh config to make it faster (<16ms)
* refactoring all eww code (i'll readd it once that's done)

## NOTES:

* read the note in the waybar config file if you're using river.  
* remember to compile waybar with the `experimental` flag for `hyprland` support.

## credits

* official [catppuccin](https://github.com/catppuccin/catppuccin) ports used wherever possible.  
* configs built of of example configs for pretty much everything.