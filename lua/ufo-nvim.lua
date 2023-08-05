local o = vim.o
local vks = vim.keymap.set

o.foldcolumn = '1'
o.foldlevel = 99
o.foldlevelstart = 99
o.foldenable = true

vks('n', '<leader>os', require('ufo').openAllFolds)
vks('n', '<leader>cs', require('ufo').closeAllFolds)
