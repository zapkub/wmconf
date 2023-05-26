local mapping = {}

mapping.abc = {
  n = {
    ["<leader><leader>i"] = {"<cmd>IconPickerInsert emoji<cr>", "insert emoji from picker", opts = { noremap = true, silent = true }},
    ["<leader><leader>r"] = {"<cmd>Telescope lsp_references<cr>", "open telescope lsp references"},
    ["<leader><leader>lr"] = {"<cmd>lua vim.lsp.buf.rename()<cr>", "lsp rename symbols"},
  }
}



return mapping
