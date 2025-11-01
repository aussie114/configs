require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "bash", "python", "json", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local cmp = require'cmp'

cmp.setup {
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  sources = cmp.config.sources({
    { name = 'buffer', option = {
      get_bufnrs = function()
        return vim.api.nvim_list_bufs()
      end,
    }},
    { name = 'luasnip' },
    { name = 'path' },
  }),
}

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.diagnostic.enable(false, { bufnr = args.buf })
  end,
})


