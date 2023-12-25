return {
    'nvim-lua/plenary.nvim',
    
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    
    'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    'nvim-treesitter/nvim-treesitter-context',
    
    'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    
    'rose-pine/neovim', name = 'rose-pine',
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    
    "nvim-tree/nvim-web-devicons",
    "nvim-tree/nvim-tree.lua", version = "*",lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
     require("nvim-tree").setup {}
    end,
    
    'theprimeagen/harpoon',

    'mbbill/undotree',

    'tpope/vim-fugitive',

    -- LSPZERO --
    'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function ()
        require('dashboard').setup{}
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}},

    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
	-- GIT HIGHLIGHTING --
	'airblade/vim-gitgutter',
}
