-- ~/.config/nvim/lua/completion.lua

local luasnip = require("luasnip")

-- Load vscode-style snippets
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })

luasnip.config.setup({
  history = true,
  updateevents = "TextChanged,TextChangedI",
})

require("blink.cmp").setup({
  sources = {
    "nvim-lsp",
    "snippets",
    "buffer",
    "path",
  },

  snippets = {
    expand = function(snippet)
      luasnip.lsp_expand(snippet)
    end,
  },
})
