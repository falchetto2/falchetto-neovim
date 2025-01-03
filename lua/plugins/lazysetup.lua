require("grundlegend.keymaps")
require("grundlegend.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("plugins.neotree"),
  require("plugins.theme"),
  require("plugins.treesitter"),
  require("plugins.telescope"),
  require("plugins.languageserver"),
  require("plugins.cmp"),
  require("plugins.autocomplete"),
  require("plugins.autoformatting"),
  require("plugins.signs"),
  -- require("plugins.buffermenu"),
})
