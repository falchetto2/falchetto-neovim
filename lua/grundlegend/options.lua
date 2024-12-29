--line numbers
vim.opt.relativenumber=true;
vim.opt.number=true;

--hintergrund von neovim für die theme
vim.opt.background="dark";

--showmode aus weil schon in statusbar
vim.opt.showmode = false

--macht ~ zeichen weg
vim.opt.fillchars = "eob: "

--kopiert yanked code auf clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

--wrapping für lange lines
vim.o.wrap=false
vim.o.linebreak=true

--case checker
vim.o.ignorecase=true
vim.o.smartcase=true

--tabbing
vim.o.shiftwidth=2
vim.o.tabstop=2
vim.o.softtabstop=2
vim.o.expandtab=true

--ab wann man scrollen soll
vim.o.scrolloff=5
vim.o.sidescrolloff=10

--wohin splitten?
vim.o.splitbelow=true
vim.o.splitright=true

--swapfile aus weil nervig
vim.o.swapfile=false

--undo history auch saven WICHTIG!!
vim.o.undofile=true

--starttext ausschalten
vim.opt.shortmess:append("I") 

--yanked code highlighten
vim.cmd("highlight YankHighlight guibg=#ff9cf3 guifg=#292929")
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="YankHighlight", timeout=150})
  augroup END
]], false)

--cursorline hintergrund
vim.opt.cursorlineopt='number' 
vim.o.cursorline=true

--keine "xL  xB geschrieben" nachricht unten
vim.opt.shortmess:append("F")
