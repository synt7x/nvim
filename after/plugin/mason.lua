local lspconfig = require('lspconfig')
local lspkind = require('lspkind')

require("mason").setup()
require("mason-lspconfig").setup_handlers({
  function(server_name)  -- Default handler for all LSP servers
    lspconfig[server_name].setup {
	}
  end,
})

vim.diagnostic.config({
  update_in_insert = true,
})

local cmp = require'cmp'
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  }),
  formatting = {
	  format = lspkind.cmp_format({
		  mode = 'symbol_text',
		  maxwidth = 50,
		  ellipsis_char = '...'
	  })
  },
	window = {
    	completion = cmp.config.window.bordered(),
    	documentation = cmp.config.window.bordered(),
	},
}
