local g = vim.g
local o = vim.o

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    width = 28,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

