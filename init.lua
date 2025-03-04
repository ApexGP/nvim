-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set theme
vim.cmd("colorscheme catppuccin")

-- add copy/paste support for neovim
vim.opt.clipboard = "unnamedplus"

-- 配置 LSP
local nvim_lsp = require("lspconfig")

nvim_lsp.yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        ["https://json.schemastore.org/gitlab-ci.json"] = "/.gitlab-ci.yml",
      },
    },
  },
})

vim.opt.termguicolors = true
