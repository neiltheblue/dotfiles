return {
  "nvim-lualine/lualine.nvim",
  require = { "nvim-tree/nvim-web-devicons", opt = true },
  config = function()
    require("lualine").setup({
      options = {
        theme = "dracula",
      },
    })
  end,
}
