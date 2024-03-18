-- Ensure 'packer.nvim' is installed by running the following command in your terminal:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    -- File explorer
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


end)



