
-- setup autoload for django html
vim.api.nvim_create_autocmd(
  {
    "BufNewFile", "BufRead"
  },
  {
    pattern = {"*/**/templates/**/*.html", "*/**/base_templates/**/*.html"},
    command = "set filetype=htmldjango"
  }
)

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},
  {
    pattern = "*/**/requirements{/**,*}.{txt,in}",
    command = "set filetype=pip-requirements"
  }
)

-- format option for css and scss
vim.api.nvim_create_autocmd({"FileType"},
  {
    pattern = "*.css",
    command = "setl iskeyword+=-"
  }
)

vim.api.nvim_create_autocmd({"FileType"},
  {
    pattern = "*.scss",
    command = "setl iskeyword+=@-@"
  }
)

-- Neoformat on save htmldjango files
vim.api.nvim_create_autocmd("BufWrite", {
    pattern = {"*/**/templates/**/*.html", "*/**/base_templates/**/*.html" },
    command = ":Neoformat --indent=4"
})

-- set Capslock ESC key
--vim.api.nvim_create_autocmd("VimEnter",
--  {
--    pattern = "*",
--    command = "silent! !xmodmap -e \"clear Lock\" -e \"keycode 0x42 = Escape\""
--  }
--)
