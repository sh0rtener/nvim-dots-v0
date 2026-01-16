local capabilities = require('cmp_nvim_lsp').default_capabilities()
local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup()

local installed_servers = mason_lspconfig.get_installed_servers()

-- [[ configuring lsp servers & autocompletion]]
for _, server in ipairs(installed_servers) do
    if server == "omnisharp" then
        local omnisharp_path = vim.fn.expand("~/.local/share/nvim/mason/packages/omnisharp/OmniSharp")
        local ok, lsp = pcall(vim.lsp.config["omnisharp"].setup, {
            cmd = { omnisharp_path, "--languageserver", "--hostPID", tostring(vim.fn.getpid()) },
            capabilities = capabilities,
        })
    else
        local cfg = vim.lsp.config[server]
        if cgf then
            local ok, lsp = pcall(vim.lsp.config[server].setup, {
                capabilities = capabilities
            })
        end
    end
end
