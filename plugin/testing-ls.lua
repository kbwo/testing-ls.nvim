if vim.g.loaded_testing_ls then
    return
end
vim.g.loaded_testing_ls = true

-- Plugin commands and autocommands can go here
require("testing-ls.user_commands").setup_user_commands()
