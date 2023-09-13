local ns = { noremap = true, silent = true }
local vks = vim.keymap.set
local luasnip = require('luasnip')

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

vks('n', '<leader>rr', '<Plug>RestNvim<CR>', ns)
vks('n', '<leader>rp', '<Plug>RestNvimPreview<CR>', ns)
vks('n', '<leader>rl', '<Plug>RestNvimLast<CR>', ns)

vks({"i"}, "<C-l>", function() luasnip.expand() end, ns)
vks({"i", "s"}, "<c-k>", function() luasnip.jump( 1) end, ns)
vks({"i", "s"}, "<c-j>", function() luasnip.jump(-1) end, ns)

vks({"i", "s"}, "<C-e>", function()
	if luasnip.choice_active() then
		luasnip.change_choice(1)
	end
end, {silent = true})
