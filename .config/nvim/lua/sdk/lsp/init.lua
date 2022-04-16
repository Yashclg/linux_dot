local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "sdk.lsp.lsp-installer"
require("sdk.lsp.handlers").setup()
require "sdk.lsp.null-ls"
