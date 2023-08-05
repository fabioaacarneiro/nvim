local ns = { noremap = true, silent = true }
local vks = vim.keymap.set

vks('n', ';', ':', ns)
vks('n', '<c-j>', ':resize -1<cr>', ns)
vks('n', '<c-k>', ':resize +1<cr>', ns)
vks('n', '<c-h>', ':vertical resize +1<cr>', ns)
vks('n', '<c-l>', ':vertical resize -1<cr>', ns)
vks('n', '<leader>h', ':<c-u>split<cr>', ns)
vks('n', '<leader>v', ':<c-u>vsplit<cr>', ns)
vks('n', '<c-b>', ':NvimTreeToggle<cr>', ns)
vks('n', '<leader><leader>', ':Telescope find_files<cr>', ns)
vks('n', '<c-p>', ':Telescope buffers<cr>', ns)
vks('n', 'gd', vim.lsp.buf.definition, ns)
vks('n', '<leader>se', ':lua vim.diagnostic.open_float(0, { border, "single"})<cr>', ns)
vks('i', 'jk', '<esc>', ns)

vks('i', '<c-j>', function()
	local luasnip = require('luasnip')
	if luasnip.jumpable(1) then
		luasnip.jump(1)
	end
end)


vks('i', '<c-k>', function()
	local luasnip = require('luasnip')
	if luasnip.jumpable(-1) then
		luasnip.jump(-1)
	end
end)

