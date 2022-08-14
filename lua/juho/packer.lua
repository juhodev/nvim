vim.cmd [[packadd packer.vim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'

    -- lsp
     use 'neovim/nvim-lspconfig'
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/nvim-cmp'
     use 'L3MON4D3/LuaSnip'
     use 'fwcd/kotlin-language-server'

     use 'nvim-treesitter/nvim-treesitter'
     use 'nvim-lua/plenary.nvim'
     use 'nvim-telescope/telescope.nvim'

     use 'terrortylor/nvim-comment'
     use 'sbdchd/neoformat'
end)
