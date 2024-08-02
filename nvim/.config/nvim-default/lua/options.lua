local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.softtabstop = 2
opt.smarttab = true
opt.expandtab = true
opt.shiftwidth = 2
opt.cmdheight = 2
opt.showmode = false
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldcolumn = "auto"
