local g = vim.g
local o = vim.opt
local c = vim.cmd

g.mapleader = ','

o.termguicolors = true
require('colorizer').setup()

o.compatible = false
o.mouse = 'a'
o.swapfile = false
o.history = 100
o.lazyredraw = true
c.colorscheme 'catppuccin-frappe'
o.relativenumber = true
o.wrap = true
o.expandtab = false
o.shiftwidth = 2
o.smartindent = true
g.airline_theme = 'catppuccin'
g.floaterm_shell = 'powershell'
g.floaterm_title = '> Bem-vindo Fabio <'
g.floaterm_height = .9
g.floaterm_width = .9
g.floaterm_keymap_new = '<leader>ct'
g.floaterm_keymap_prev = '<leader>pt'
g.floaterm_keymap_next = '<leader>nt'
g.floaterm_keymap_toggle = '<c-t>'
g.floaterm_keymap_kill = '<leader>kt'
