return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            delete_to_trash = true,
            columns = {"icon"},
            keymaps = {
                ["<C-h>"] = false,
                ["<C-c>"] = false,
                ["q"] = "actions.close",
            },
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
                is_always_hidden = function (name, _) 
                    return name == '..' or name == '.git'
                end
            },
            skip_confirm_for_simple_edits = true,
            float = {
                border = 'rounded'
            }
        })

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "opens parent directory"})
    vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "toggle float oil"})

    end
}
