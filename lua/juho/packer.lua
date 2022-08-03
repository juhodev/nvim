vim.cmd [[packadd packer.vim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'

    -- lsp
     use 'neovim/nvim-lspconfig'
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/nvim-cmp'

     use 'nvim-treesitter/nvim-treesitter'
     use 'nvim-lua/plenary.nvim'
     use 'nvim-telescope/telescope.nvim'
end)
