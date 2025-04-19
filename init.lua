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

---- neovide settings ----

-- display --
vim.o.guifont = "JetBrainsMono NFM:h12"
vim.g.neovide_opacity = 0.8
vim.g.neovide_normal_opacity = 0.8
vim.g.neovide_refresh_rate = 240

-- animation --
vim.g.neovide_position_animation_length = 0.15
vim.g.neovide_scroll_animation_length = 0.3
--vim.g.neovide_cursor_animation_length = 0.13
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_smooth_blink = true
