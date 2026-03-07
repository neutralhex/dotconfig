return {
  'anurag3301/nvim-platformio.lua',

  -- Dependencies are lazy-loaded by default unless specified otherwise.
  dependencies = {
    { 'akinsho/toggleterm.nvim' },
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-lua/plenary.nvim' },
    { 'folke/which-key.nvim' },
    { 'nvim-treesitter/nvim-treesitter' }
  },
  config = function()
        vim.g.pioConfig ={
        lsp = 'clangd',           -- value: clangd | ccls 
        clangd_source = 'ccls',    -- value: ccls | compiledb, For detailed explation check :help platformio-clangd_source
        menu_key = '<leader>\\',  -- replace this menu key  to your convenience
        debug = false             -- enable debug messages
        } 
        local pok, platformio = pcall(require, 'platformio')
        if pok then platformio.setup(vim.g.pioConfig) end
    end
}
