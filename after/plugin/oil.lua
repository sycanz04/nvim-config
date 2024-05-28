require("oil").setup({
    default_file_explorer = true,
    columns = {
        "icon",
        "permissions",
    },
    skip_confirm_for_simple_edits = false,
    prompt_save_on_select_new_entry = true,
    view_options = {
        show_hidden = true,

        is_hidden_file = function(name, bufnr)
            return vim.startswith(name, ".")
        end,

        is_always_hidden = function(name, bufnr)
            return false
        end,
    }
})
