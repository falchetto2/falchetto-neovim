return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "j-hui/fidget.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

    local servers = {
      rust_analyzer = {},
      ts_ls = {
        settings = {
          typescript = { inlayHints = { includeInlayParameterNameHints = "all" } },
          javascript = { inlayHints = { includeInlayParameterNameHints = "all" } },
        },
      },
      volar = {
        filetypes = { "vue", "typescript", "javascript", "javascriptreact", "typescriptreact" },
      },
      angularls = {},
      tailwindcss = {},
      jsonls = {},
      sqlls = {},
      html = { filetypes = { "html", "twig", "hbs" } },
      cssls = {},
      jdtls = {},
      omnisharp = {},
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
              pylsp_black = { enabled = true },
              pylsp_mypy = { enabled = true },
              pylsp_isort = { enabled = true },
            },
          },
        },
      },
      kotlin_language_server = {},
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            workspace = {
              checkThirdParty = false,
              library = vim.api.nvim_get_runtime_file("", true),
            },
            diagnostics = { globals = { "vim" } },
          },
        },
      },
    }

    require("mason").setup({
      ensure_installed = vim.tbl_keys(servers),
    })

    require("mason-lspconfig").setup()

    for server_name, opts in pairs(servers) do
      local server = vim.tbl_deep_extend("force", {}, { capabilities = capabilities }, opts or {})
      require("lspconfig")[server_name].setup(server)
    end

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("custom-lsp", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end

        map("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
        map("gr", vim.lsp.buf.references, "[G]oto [R]eferences")
        map("gi", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
        map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
        map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
      end,
    })
  end,
}

