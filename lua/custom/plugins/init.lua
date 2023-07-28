-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information


vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [f]iles' })
vim.keymap.set('n', '<leader>fb', vim.lsp.buf.format, { desc = '[F]ind [b]uffer' })


return {}
