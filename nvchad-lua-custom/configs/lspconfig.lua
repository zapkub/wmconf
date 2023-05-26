local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filestypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  filestypes = { "ts", "tsx" },
  root_dir = lspconfig.util.root_pattern("package.json"),
}

