source $HOME/.config/nvim/general/config.vim
source $HOME/.config/nvim/plugins/settings.vim
source $HOME/.config/nvim/plugins/keybinds.vim
source $HOME/.config/nvim/plugins/dashboard.vim
source $HOME/.config/nvim/plugins/lsp.vim

lua require('plugins')

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
