return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right",
          width = 30,
          border = "none",
        },
        defaults = {
          window = {
            background = "none",
          },
        },
      })
    end,
  }
