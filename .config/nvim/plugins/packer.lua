return require('packer').startup(function()
	
	use 'wbthomason/packer.nvim'
	-- coq stuff

	use { 
		'ms-jpq/coq_nvim',
		requires = { 
			{ 'ms-jpq/coq.artifacts', branch='artifacts' },
			{ 'ms-jpq/coq.thirdparty', branch='3p' },
			{ 'kyazdani42/nvim-web-devicons', opt = true },

		}
	}

	-- lsp stuff (for coq)

	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- telescope for finding
	--
	use { 
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		cmd = 'Telescope',
    	module = 'telescope',
    	config = function() require("telescope").setup() end,
	}

	-- make nvim look prettier
	
	use 'kyazdani42/nvim-web-devicons' 
	use "lukas-reineke/indent-blankline.nvim"

	use {
 	 	'nvim-lualine/lualine.nvim',
 	 	requires = { 'kyazdani42/nvim-web-devicons' },
		config = [[require('lualine').setup()]],
	
	}

	use {
		'glepnir/dashboard-nvim',
		requires = { 'nvim-telescope/telescope.nvim', opt = true },
	}

	use {
		'akinsho/bufferline.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = [[require("bufferline").setup{}]],
	}
	
	-- sidebar stuff (lazy loaded)
	
	use {
		'preservim/tagbar',
		cmd = 'TagbarToggle',
		module = 'tagbar',

	}

	use {
		'ms-jpq/chadtree',
		requires = { 'kyazdani42/nvim-web-devicons' },
		cmd = 'CHADopen',
		module = 'chadtree',
	}


end)
