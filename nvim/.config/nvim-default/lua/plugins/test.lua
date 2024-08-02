return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
    "esamattis/slimux",
  },
  config = function()
    --vim.cmd("let test#strategy='basic'")
    --vim.cmd("let test#strategy='slimux'")
    --vim.cmd("let test#strategy='tslime'")
    --vim.cmd("let test#strategy='vimux'")
    --vim.cmd("let test#strategy='neovim_sticky'")
    vim.cmd("let test#strategy='vimux'")
  end,
}
