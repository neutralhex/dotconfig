-- ~/.config/nvim/lua/completion.lua

local luasnip = require("luasnip")

-- Load vscode-style snippets
require("luasnip.loaders.from_vscode").lazy_load()

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

  keymap = {
    ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    ["<CR>"] = { "accept", "fallback" },
    ["<Esc>"] = { "hide", "fallback" },
  },
})
