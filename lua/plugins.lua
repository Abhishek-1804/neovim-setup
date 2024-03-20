-- Ensure 'packer.nvim' is installed by running the following command in your terminal:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Startup page layout
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    -- File explorer
    -- To view file icons, download a nerd font from nerdfonts.com and move the folder to ~/Library/Fonts
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'},
        config = function() require('config.nvim-tree') end
    }

    -- Fuzzy finder
    -- brew install ripgrep for live_grep
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim',},
        config = function() require('config.telescope') end
    }

    -- Syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('config.treesitter') end
    }

    -- Comment toggler
    use 'tpope/vim-commentary'

    -- Git integration
    use 'tpope/vim-fugitive'

    -- GitSigns
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function() require('gitsigns').setup() end
    }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons'},
        config = function() require('config.lualine') end
    }

    -- Surround text with delimiters
    use 'tpope/vim-surround'

    -- Colorscheme
    use {
        "catppuccin/nvim", as = "catppuccin",
        config = function() require('config.catppuccin') end
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        config = function() require('config/lsp-config') end
    }

    -- Autocomplete
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'rafamadriz/friendly-snippets' -- Set of preconfigured snippets

end)

