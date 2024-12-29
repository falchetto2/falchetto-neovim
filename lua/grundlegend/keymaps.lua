--keymapleader festlegen global und local
vim.g.mapleader=" "
vim.g.maplocalleader=" "

--spacebareinfluss ausschalten
vim.api.nvim_set_keymap('n', '<Space>', ':silent! <command> <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>', ':silent! <command> <CR>', { noremap = true, silent = true })

--damit ich diese attribute nicht immer neu definieren muss
local opts = {noremap=true, silent=true}

--neotree öffnen
vim.keymap.set("n", "<leader>e", ":Neotree<CR>", opts)

--file saven
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)

--file quitten
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)

--file forcequitten
vim.keymap.set("n", "<leader>fq", ":q!<CR>", opts)

--normalmode-x-wert soll nicht in clipboard gesaved werden
vim.keymap.set("n", "x", '"_x', opts)

--neuen buffer erstellen
vim.keymap.set("n", "<leader>n", ':enew<CR>', opts)

--tabs navigieren
vim.keymap.set("n", "<Tab>", ':tabn<CR>', opts)
vim.keymap.set("n", "<S-Tab>", ':tabp<CR>', opts)

--screen splits machen
vim.keymap.set("n", "<leader>sv", "<C-w>v", opts)
vim.keymap.set("n", "<leader>sw", "<C-w>s", opts)

--splitgrößen manuell verändern
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Up>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize -2<CR>', opts)

--buffers navigieren
vim.keymap.set("n", "<Leader>h", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<Leader>j", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<Leader>k", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<Leader>l", ":wincmd l<CR>", opts)

--wenn line zu lange ist dann wrappen SOOO GUUT!!
vim.keymap.set("n", "<Leader>r", ":set wrap!<CR>", opts)

--lines indenten - das ist auch sooo nützlich
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

--diagnostics keybinds stuff
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
