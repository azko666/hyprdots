local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
  lua_ls = {},
  pyright = {},
  tsserver = {},
  dockerls = {},
  docker_compose_language_service = {},
}

for server, opts in pairs(servers) do
  opts.capabilities = capabilities
  lspconfig[server].setup(opts)
end

-- Keybinding de ayuda (hover)
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

