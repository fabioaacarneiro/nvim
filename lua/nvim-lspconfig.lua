local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local lspconfig_configs = require("lspconfig.configs")

local capabilities = require"cmp_nvim_lsp".default_capabilities()

lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {capabilities = capabilities})

local function get_config_options(server_name)
    if (server_name == "sumneko_lua") then
        return {
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT"
                    },
                    diagnostics = {
                        globals = {"vim"}},
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true)
                        }
                    }
                }
            }
    else
        return {}
    end
end

mason.setup({})
mason_lspconfig.setup({})
mason_lspconfig.setup_handlers({function(server_name)
    local server = lspconfig[server_name]
    return server.setup(get_config_options(server_name))
end})

