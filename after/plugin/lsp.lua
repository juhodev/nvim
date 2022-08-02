local Remap = require('juho.keymap')
local nnoremap = Remap.nnoremap

local cmp = require('cmp')
cmp.setup({
    snippet = {},
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Enter>'] = cmp.mapping.complete(),
    }),
    sources = {
        { name = 'nvim_lsp' },
    },
})

local function config(_config)
	return vim.tbl_deep_extend("force", {
		on_attach = function()
			nnoremap("gd", function() vim.lsp.buf.definition() end)
			nnoremap("K", function() vim.lsp.buf.hover() end)
			nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
			nnoremap("<leader>vd", function() vim.diagnostic.open_float() end)
			nnoremap("[d", function() vim.diagnostic.goto_next() end)
			nnoremap("]d", function() vim.diagnostic.goto_prev() end)
			nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
			nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
			nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
            nnoremap("<leader>e", function() vim.lsp.diagnostic.show_line_diagnostics() end)
            nnoremap("<C-k>", function() vim.lsp.buf.signature_help() end)
		end,
	}, _config or {})
end

require('lspconfig').tsserver.setup(config())
