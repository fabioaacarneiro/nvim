require("toggleterm").setup{
    open_mapping = [[<C-t>]],
    direction = "float",
    shell = vim.o.shell,
    float_options = {
        border = "curved",
        width = 3,
        height = 5
    },
}
