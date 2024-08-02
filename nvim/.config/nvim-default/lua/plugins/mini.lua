return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.icons").setup()
    require("mini.animate").setup()
    require("mini.bracketed").setup()
    require("mini.map").setup()
    require("mini.pairs").setup()
  end,
}
