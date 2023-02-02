
vim.g.coc_global_extensions = {
    'coc-css',
    'coc-lua',
    'coc-emmet',
    'coc-html',
    'coc-json',
    'coc-git',
    'coc-tsserver',
    'coc-vetur',
    'coc-pairs',
    'coc-python',
    'coc-phpls',
    'coc-snippets',
    'coc-htmldjango',
}

vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "<CR>"', opts)
vim.keymap.set("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
vim.keymap.set("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
vim.keymap.set("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
vim.keymap.set("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})
vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", {silent = true})
vim.keymap.set("n", "gr", "<Plug>(coc-references)", {silent = true})
