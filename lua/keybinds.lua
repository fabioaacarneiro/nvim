
local ns = { noremap = true, silent = true }

-- insert / and ? in my imac keyboard clone
vim.keymap.set("i", "<M-q>", "/", ns)
vim.keymap.set("i", "<M-w>", "?", ns)

-- Command
vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "<Leader>r", ":luafile %<CR>", ns)

-- Format file
vim.keymap.set("n", "<Leader>ff", vim.lsp.buf.format, ns)

-- Window
vim.keymap.set("n", "<C-j>", ":resize -2<CR>", ns)
vim.keymap.set("n", "<C-k>", ":resize +2<CR>", ns)
vim.keymap.set("n", "<C-l>", ":vertical resize +2<CR>", ns)
vim.keymap.set("n", "<C-h>", ":vertical resize -2<CR>", ns)
vim.keymap.set("n", "<Leader>h", ":<C-u>split<CR>", ns)
vim.keymap.set("n", "<Leader>v", ":<C-u>vsplit<CR>", ns)

-- Moving
vim.keymap.set("n", "j", "gj", ns)
vim.keymap.set("n", "k", "gk", ns)

-- Create new tab
-- vim.keymap.set("n", "<C-t>", ":tabnew <CR>", ns)

-- NeoTree
-- set("n", "<Leader>o", ":NeoTreeFloatToggle<CR>", ns)
vim.keymap.set("n", "<Leader>o", ":NeoTreeFocusToggle<CR>", ns)

-- Telescope
vim.keymap.set("n", "<Leader><Leader>", ":Telescope find_files<CR>", ns)
vim.keymap.set("n", "<C-p>", ":Telescope buffers<CR>", ns)

-- Edits
vim.keymap.set("n", '<Leader>"', 'viw<ESC>a"<esc>Bi"<esc>el', ns)
vim.keymap.set("n", "<Leader>'", "viw<ESC>a'<esc>Bi'<esc>el", ns)
vim.keymap.set("n", "<Leader>(", "viw<ESC>a)<esc>Bi(<esc>el", ns)
vim.keymap.set("n", "<Leader>[", "viw<ESC>a]<esc>Bi[<esc>el", ns)
vim.keymap.set("n", "<Leader>{", "viw<ESC>a}<esc>Bi{<esc>el", ns)
vim.keymap.set("n", "<Leader><", "viw<ESC>a><esc>Bi<<esc>el", ns)

-- Change extension html to djangohtml

vim.keymap.set("n", "<Leader>f1", ":set filetype=html<CR>", ns)
vim.keymap.set("n", "<Leader>f2", ":set filetype=htmldjango<CR>", ns)
vim.keymap.set("n", "<Leader>f3", ":set filetype=css<CR>", ns)
vim.keymap.set("n", "<Leader>f4", ":set filetype=scss<CR>", ns)

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {silent = true})

-- Jump luasnip
vim.keymap.set("i", "<C-j>", function ()
    local luasnip = require("luasnip")
    if luasnip.jumpable(1) then
        luasnip.jump(1)
    end
end)

vim.keymap.set("i", "<C-k>", function ()
    local luasnip = require("luasnip")
    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    end
end)

-- New ESC bind
vim.keymap.set("i", "jk", "<ESC>")
