source $XDG_CONFIG_HOME/nvim/general/config.vim
source $XDG_CONFIG_HOME/nvim/plugins/settings.vim
source $XDG_CONFIG_HOME/nvim/plugins/keybinds.vim
source $XDG_CONFIG_HOME/nvim/plugins/dashboard.vim
source $XDG_CONFIG_HOME/nvim/plugins/lsp.vim

lua require('plugins')

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
