-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("fzf-lua")
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local function change_nvim_tree_dir()
  local nvim_tree = require("nvim-tree")
  nvim_tree.change_dir(vim.fn.getcwd())
end

require("auto-session").setup({
  log_level = "error",
  auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
  pre_save_cmds = { "NvimTreeClose" },
})

require("toggleterm").setup({})
require("flatten").setup({})
require("venv-selector").setup({})
