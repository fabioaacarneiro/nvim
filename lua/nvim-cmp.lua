local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")
local loader = require("luasnip.loaders.from_vscode")

loader.lazy_load()

local sources = {
    {name = "nvim_lsp"},
    {name = "luasnip"},
    {name = "path"},
    {name = "buffer"},
    {name = "calc"},
    {name = "emoji"}
}

cmp.setup({
    snippet = {
        expand = function(args)
        return luasnip.lsp_expand(args.body)
        end
    },
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close()
        }),
        ["<C-p>"] = function(fallback)
            if cmp.visible() then
                return cmp.select_prev_item({
                    behavior = cmp.SelectBehavior.Insert
                })
            else
                return fallback()
            end
        end,
        ["<C-n>"] = function(fallback)
            if cmp.visible() then
                return cmp.select_next_item({
                    behavior = cmp.SelectBehavior.Insert
                })
            else
                return fallback()
            end
        end,
        ["<CR>"] = cmp.mapping.confirm({
            select = true
        })
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            before = function(entry, vim_item)
                vim_item.kind = (lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind)
                vim_item.menu = ({
                    path = "[Path]",
                    conjure = "[Conjure]",
                    buffer = "[Buffer]",
                    calc = "[Calc]",
                    nvim_lsp = "[LSP]",
                    cmp_tabnine = "[TabNine]",
                    luasnip = "[LuaSnip]",
                    emoji = "[Emoji]"
                })
                [entry.source.name]
                return vim_item
            end
        })
    },
    sources = sources
})

cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {{name = "buffer"}}
})

return cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({{name = "path"}}, {{name = "cmdline"}})
})

