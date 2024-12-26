if vim.g.loaded_testing_ls then
    return
end
vim.g.loaded_testing_ls = true

-- Plugin commands and autocommands can go here
require("testing-ls").setup_user_commands()