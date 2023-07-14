vim.cmd [[packadd packer.vim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'
    use 'jacoborus/tender.vim'

    -- lsp
     use 'neovim/nvim-lspconfig'
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/nvim-cmp'
     use 'L3MON4D3/LuaSnip'
     use 'fwcd/kotlin-language-server'
     use 'victorhqc/tree-sitter-prisma'
     use 'heavenshell/vim-jsdoc'

     use 'nvim-treesitter/nvim-treesitter'
     use 'nvim-lua/plenary.nvim'
     use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }
     use 'nvim-treesitter/nvim-treesitter-context'

     use 'terrortylor/nvim-comment'
     use 'sbdchd/neoformat'

     use 'APZelos/blamer.nvim'
     use "EdenEast/nightfox.nvim"
end)
