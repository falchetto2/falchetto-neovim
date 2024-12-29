return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = {
        -- Tab zum nächsten Vorschlag
        ["<Tab>"] = cmp.mapping.select_next_item(),
        -- Shift+Tab zum vorherigen Vorschlag
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        -- Enter zum Bestätigen des Vorschlags
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- Möglichkeit, die Autovervollständigung zu schließen
        ["<C-e>"] = cmp.mapping.close(),
        -- Weitere nützliche Tastenkombinationen
        ["<C-d>"] = cmp.mapping.scroll_docs(-4), -- Scrollen im Dokument
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scrollen im Dokument
        ["<C-Space>"] = cmp.mapping.complete(), -- Vervollständigung anzeigen
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "cmdline" },
        { name = "luasnip" },
      },
    })
  end,
}

