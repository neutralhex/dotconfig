return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "auto",
      globalstatus = true,
      component_separators = "|",
      section_separators = "",
    },

    sections = {
      lualine_a = { "mode" },

      lualine_b = { "branch", "diff" },

      lualine_c = {
        {
          "filename",
          path = 1, -- relative path
        },
      },

      lualine_x = {
        {
          -- show active LSP
          function()
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if #clients == 0 then
              return "no-lsp"
            end
            return clients[1].name
          end,
          icon = " ",
        },

        "diagnostics",
        "filetype",
      },

      lualine_y = { "progress" },

      lualine_z = { "location" },
    },
  },
}
