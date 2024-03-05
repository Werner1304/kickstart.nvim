-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.api.nvim_create_autocmd('filetype',{
							pattern = 'netrw',
							callback = function()
								vim.keymap.set('n', 'f', '%', {remap = true, buffer = true})
								vim.keymap.set('n', 'r', 'R', {remap = true, buffer = true})
							end
							})
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [f]iles' })
vim.keymap.set('n', '<leader>fb', vim.lsp.buf.format, { desc = '[F]ind [b]uffer' })
vim.keymap.set('n', '<leader>t', vim.cmd.Ex, { desc = '[T]ree' })
vim.keymap.set('n', '<leader>sv', vim.cmd.vsplit, { desc = '[S]plit [v]ertical' })
vim.keymap.set('n', '<leader>sh', vim.cmd.split, { desc = '[S]plit [h]orizontal' })

return {}
