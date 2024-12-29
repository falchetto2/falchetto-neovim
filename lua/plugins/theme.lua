return {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
      vim.cmd.colorscheme("oxocarbon")
      --neovim generell transparent machen
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#292929", bg = "none" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff9cf3", bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "none", bg = "none" })
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "none", bg = "none" })
      vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = "none", bg = "none" })
      vim.api.nvim_set_hl(0, "StatusLine", { bg = "none", fg = "#ffffff" }) 
      vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none", fg = "#888888" })  
      --damit die bufferzeile beim tabbing transparent ist
      vim.api.nvim_set_hl(0, "TabLine", { bg = "none", fg = "#ffffff" })  
      vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "#888888" }) 
      vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "#ff9cf3" }) 
      --damit neovim buffer transparent sind
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      --damit die aktuelle line nicht farblich anders ist
      vim.cmd([[highlight NeoTreeCursorLine guibg=NONE guifg=NONE]])
      --farbe von den foldernamen neotree
      vim.cmd([[highlight NeoTreeDirectoryName guifg=#FF9CF3]]) 
      --farbe von den fordericons neotree
      vim.cmd([[highlight NeoTreeFolderIcon guifg=#FF9CF3]]) 
      --folderstrich zwischen buffern unsichtbar
      vim.opt.fillchars:append({ vert = " " })
    end,
  }

