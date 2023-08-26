require('nvim-treesitter.configs').setup {
  ensure_installed = {'python', 'c', 'cpp', 'php', 'http', 'json'},
  highlight = {enable = true},
  indent = {enable = true}
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.tsx.filetype_to_parsername = {'javascript', 'typescript.tsx'}
