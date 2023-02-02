

require("onedarkpro").setup({
    colors = {
        onedark = {
            Comment = "#555555"
        },
        onelight = {
            bg = "#ffeacc",
            fg = "#664504",
            Comment = "#b39a68",
            yellow = "#ff9c00",
            Operator = "#0018ea",
            blue = "#006fff",
            cyan = "#179cb2",
            red = "#de5a2f",
            orange = "#ff6b38"
        }
    }, -- Override default colors or create your own
    highlights = {}, -- Override default highlight groups or create your own
    filetypes = { -- Override which filetype highlight groups are loaded
      -- See the 'Configuring filetype highlights' section for the available list
    },
    plugins = { -- Override which plugin highlight groups are loaded
      -- See the 'Supported plugins' section for the available list
    },
    styles = { -- For example, to apply bold and italic, use "bold,italic"
        types = "bold", -- Style that is applied to types
        numbers = "bold", -- Style that is applied to numbers
        strings = "NONE", -- Style that is applied to strings
        comments = "italic", -- Style that is applied to comments
        keywords = "bold,italic", -- Style that is applied to keywords
        constants = "bold", -- Style that is applied to constants
        functions = "NONE", -- Style that is applied to functions
        operators = "bold", -- Style that is applied to operators
        variables = "NONE", -- Style that is applied to variables
        conditionals = "bold", -- Style that is applied to conditionals
        virtual_text = "bold", -- Style that is applied to virtual text
    },
    options = {
        bold = true, -- Use bold styles?
        italic = true, -- Use italic styles?
        underline = true, -- Use underline styles?
        undercurl = true, -- Use undercurl styles?
        cursorline = true, -- Use cursorline highlighting?
        transparency = false, -- Use a transparent background?
        terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
        highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    }
})

vim.cmd("colorscheme onedark")
--vim.cmd("colorscheme onelight")
