return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require("which-key")
    local vimrc = vim.fn.expand("$MYVIMRC")
    local MiniMap = require("mini.map")

    wk.add({
      { "<C-n>", "<cmd>Neotree filesystem toggle left<cr>", desc = "Neotree", mode = { "n", "i" } },
      { "<leader>b", group = "Buffers" },
      {
        "<leader>b1",
        "<cmd>BufferGoto 1<cr>",
        desc = "Buffer Goto 1",
        mode = "n",
      },
      {
        "<leader>b2",
        "<cmd>BufferGoto 2<cr>",
        desc = "Buffer Goto 2",
        mode = "n",
      },
      {
        "<leader>b3",
        "<cmd>BufferGoto 3<cr>",
        desc = "Buffer Goto 3",
        mode = "n",
      },
      {
        "<leader>b4",
        "<cmd>BufferGoto 4<cr>",
        desc = "Buffer Goto 4",
        mode = "n",
      },
      {
        "<leader>b5",
        "<cmd>BufferGoto 5<cr>",
        desc = "Buffer Goto 5",
        mode = "n",
      },
      {
        "<leader>b6",
        "<cmd>BufferGoto 6<cr>",
        desc = "Buffer Goto 7",
        mode = "n",
      },
      {
        "<leader>b7",
        "<cmd>BufferGoto 7<cr>",
        desc = "Buffer Goto 7",
        mode = "n",
      },
      {
        "<leader>b8",
        "<cmd>BufferGoto 8<cr>",
        desc = "Buffer Goto 8",
        mode = "n",
      },
      {
        "<leader>b9",
        "<cmd>BufferGoto 9<cr>",
        desc = "Buffer Goto 9",
        mode = "n",
      },
      {
        "<leader>b0",
        "<cmd>BufferLast<cr>",
        desc = "Buffer Last",
        mode = "n",
      },
      {
        "<leader>bf",
        "<cmd>Telescope find_files<cr>",
        desc = "Find File",
        mode = "n",
      },
      {
        "<leader>bx",
        "<cmd>BufferClose<cr>",
        desc = "Buffer Close",
        mode = "n",
      },
      {
        "<leader>bX",
        "<cmd>BufferClose!<cr>",
        desc = "Force Buffer Close",
        mode = "n",
      },
      {
        "<leader>bp",
        "<cmd>BufferPick<cr>",
        desc = "Buffer Pick",
        mode = "n",
      },
      {
        "<leader>bb",
        "<cmd>BufferOrderByBufferNumber<cr>",
        desc = "Buffer order by Buffer Number",
        mode = "n",
      },
      {
        "<leader>bn",
        "<cmd>BufferOrderByName<cr>",
        desc = "Buffer order by Name",
        mode = "n",
      },
      {
        "<leader>bd",
        "<cmd>BufferOrderByDirectory<cr>",
        desc = "Buffer order by Directory",
        mode = "n",
      },
      {
        "<leader>bl",
        "<cmd>BufferOrderByLanguage<cr>",
        desc = "Buffer order by Language",
        mode = "n",
      },
      {
        "<leader>bw",
        "<cmd>BufferOrderByWindowNumber<cr>",
        desc = "Buffer order by Window Number",
        mode = "n",
      },
      {
        "<leader>bo",
        "<cmd>BufferCloseAllButCurrent<cr>",
        desc = "Buffer Close All but Current",
        mode = "n",
      },
      {
        "<leader>bt",
        "<cmd>Telescope buffers<cr>",
        desc = "Telescope buffers",
        mode = "n",
      },
      { "<leader>g", group = "Git" },
      { "<leader>gs", "<cmd>Git<cr>", desc = "Git status", mode = "n" },
      { "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", desc = "Gitsigns Hunk", mode = "n" },
      { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git diff", mode = "n" },
      { "<leader>gw", "<cmd>Gwrite<cr>", desc = "Git write", mode = "n" },
      { "<leader>gr", "<cmd>Gread<cr>", desc = "Git read", mode = "n" },
      { "<leader>gl", "<cmd>Git log<cr>", desc = "Git log", mode = "n" },
      { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git commit", mode = "n" },
      { "<leader>gB", "<cmd>Git blame toggle<cr>", desc = "Git blame toggle", mode = "n" },
      { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame", mode = "n" },
      { "<leader>c", group = "Code" },
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        desc = "Code Action",
        mode = "n",
      },
      {
        "<leader>cf",
        vim.lsp.buf.format,
        desc = "Format File",
        mode = "n",
      },
      {
        "<leader>ch",
        vim.lsp.buf.hover,
        desc = "Show Hover",
        mode = "n",
      },
      {
        "<leader>cR",
        vim.lsp.buf.rename,
        desc = "LSP Rename",
        mode = "n",
      },
      {
        "<leader>cd",
        vim.lsp.buf.definition,
        desc = "Show Definition",
        mode = "n",
      },
      {
        "<leader>ct",
        "<cmd>TodoLocList<cr>",
        desc = "ToDo List",
        mode = "n",
      },
      {
        "<leader>cT",
        "<cmd>TodoTelescope<cr>",
        desc = "ToDo Telescope",
        mode = "n",
      },
      {
        "<leader>cD",
        "<cmd>Telescope diagnostics<cr>",
        desc = "Telescope Diagnostics",
        mode = "n",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols ",
        mode = "n",
      },
      {
        "<leader>cx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics ",
        mode = "n",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... ",
        mode = "n",
      },
      { "<leader>co", "<cmd>Trouble loclist toggle<cr>", desc = "Location List ", mode = "n" },
      { "<leader>cq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List ", mode = "n" },
      { "<leader>cr", "<cmd>Telescope treesitter<cr>", desc = "Telescope Treesitter", mode = "n" },
      { "<leader>d", group = "Debugger" },
      { "<leader>dc", "<cmd>DapContinue<cr>", desc = "Continue", mode = "n" },
      { "<leader>dx", "<cmd>DapTerminate<cr>", desc = "Terminate", mode = "n" },
      { "<leader>do", "<cmd>DapStepOver<cr>", desc = "Step Over", mode = "n" },
      { "<leader>di", "<cmd>DapStepInto<cr>", desc = "Step Into", mode = "n" },
      { "<leader>du", "<cmd>DapStepOut<cr>", desc = "Step Out", mode = "n" },
      { "<leader>dt", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Breakpoint", mode = "n" },
      { "<leader>dr", "<cmd>DapToggleRepl<cr>", desc = "Toggle REPL", mode = "n" },
      { "<leader>dn", "<cmd>DapNew<cr>", desc = "New", mode = "n" },
      { "<leader>de", "<cmd>DapEval<cr>", desc = "Eval", mode = "n" },
      {
        "<leader>dm",
        function()
          require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
        end,
        desc = "Set Breakpoint with Message",
        mode = "n",
      },
      {
        "<leader>dl",
        function()
          require("dap").run_last()
        end,
        desc = "Run Last",
        mode = "n",
      },
      {
        "<leader>dh",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "Hover",
        mode = "n",
      },
      {
        "<leader>dp",
        function()
          require("dap.ui.widgets").preview()
        end,
        desc = "Preview",
        mode = "n",
      },
      {
        "<leader>df",
        function()
          require("dap.ui.widgets").centered_float(require("dap.ui.widgets").frames)
        end,
        desc = "Center Frames",
        mode = "n",
      },
      {
        "<leader>dS",
        function()
          require("dap.ui.widgets").centered_float(require("dap.ui.widgets").scopes)
        end,
        desc = "Center Scopes",
        mode = "n",
      },
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Debug Continue",
      },
      {
        "<F6>",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<F7>",
        function()
          require("dap").step_over()
        end,
        desc = "Debug Step Over",
      },
      {
        "<F8>",
        function()
          require("dap").step_into()
        end,
        desc = "Debug Step Into",
      },
      {
        "<F9>",
        function()
          require("dap").step_out()
        end,
        desc = "Debug Step Out",
      },
      { "<leader>t", group = "Test" },
      {
        "<leader>tt",
        "<cmd>TestNearest<cr>",
        desc = "Test Nearest",
        mode = "n",
      },
      {
        "<leader>tT",
        "<cmd>TestFile<cr>",
        desc = "Test File",
        mode = "n",
      },
      {
        "<leader>ta",
        "<cmd>TestSuite<cr>",
        desc = "Test Suite",
        mode = "n",
      },
      {
        "<leader>tl",
        "<cmd>TestLast<cr>",
        desc = "Test Last",
        mode = "n",
      },
      {
        "<leader>tg",
        "<cmd>TestVisit<cr>",
        desc = "Test Visit",
        mode = "n",
      },
      { "<leader>e", group = "Edit" },
      {
        "<leader>ev",
        '"+p',
        desc = "Paste From Clipboard",
        mode = "n",
      },
      {
        "<leader>ec",
        '"+y',
        desc = "Paste To Clipboard",
        mode = "n",
      },
      { "<leader>f", group = "File" },
      {
        "<leader>fb",
        "<cmd>Neotree reveal left<cr>",
        desc = "File Browser",
        mode = "n",
      },
      {
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        desc = "Find File",
        mode = "n",
      },
      {
        "<leader>fr",
        "<cmd>Telescope oldfiles<cr>",
        desc = "Open Recent File",
        mode = "n",
      },
      {
        "<leader>fn",
        "<cmd>enew<cr>",
        desc = "New File",
        mode = "n",
      },
      {
        "<leader>fs",
        "<cmd>w<cr>",
        desc = "Save File",
        mode = "n",
      },
      {
        "<leader>fa",
        "<cmd>wa<cr>",
        desc = "Save All",
        mode = "n",
      },
      {
        "<leader>fx",
        "<cmd>q<cr>",
        desc = "Exit",
        mode = "n",
      },
      { "<leader>p", group = "Project" },
      {
        "<leader>pb",
        "<cmd>Neotree reveal_force_cwd left<cr>",
        desc = "Project Browser",
        mode = "n",
      },
      {
        "<leader>pg",
        "<cmd>Telescope live_grep<cr>",
        desc = "Live Grep",
        mode = "n",
      },
      { "<leader>n", group = "Nvim" },
      {
        "<leader>na",
        "<cmd>Alpha<cr>",
        desc = "Alpha",
        mode = "n",
      },
      {
        "<leader>nq",
        "<cmd>qa<cr>",
        desc = "Quit",
        mode = "n",
      },
      {
        "<leader>nQ",
        "<cmd>qa!<cr>",
        desc = "Quit Without Save",
        mode = "n",
      },
      {
        "<leader>no",
        "<cmd>Oil " .. vim.fn.fnamemodify(vimrc, ":p:h") .. "<cr>",
        desc = "Config Browser",
        mode = "n",
      },
      {
        "<leader>nc",
        "<cmd>Neotree $MYVIMRC reveal_force_cwd left<cr>",
        desc = "Config Browser",
        mode = "n",
      },
      {
        "<leader>nn",
        "<cmd>Neotree $MYVIMRC toggle left<cr>",
        desc = "Toggle Config Browser",
        mode = "n",
      },
      {
        "<leader>nh",
        "<cmd>Neotree dir=$HOME reveal left<cr>",
        desc = "Home Browser",
        mode = "n",
      },
      {
        "<leader>nl",
        "<cmd>Lazy<cr>",
        desc = "Lazy",
        mode = "n",
      },
      {
        "<leader>nm",
        "<cmd>Mason<cr>",
        desc = "Mason",
        mode = "n",
      },
      { "<leader>u", group = "Util" },
      {
        "<leader>uf",
        "<cmd>FloatermNew --position=topright --autoclose=1<cr>",
        desc = "Float Terminal",
        mode = "n",
      },
      {
        "<leader>ut",
        "<cmd>below terminal<cr>",
        desc = "Terminal",
        mode = "n",
      },
      {
        "<leader>uu",
        "<cmd>Telescope colorscheme<cr>",
        desc = "UI Color Scheme",
        mode = "n",
      },
      {
        "<leader>us",
        "<cmd>Telescope spell_suggest<cr>",
        desc = "Suggest spelling",
        mode = "n",
      },
      {
        "<leader>ur",
        "<cmd>Telescope registers<cr>",
        desc = "Registers",
        mode = "n",
      },
      {
        "<leader>uc",
        "<cmd>Telescope commands<cr>",
        desc = "Commands",
        mode = "n",
      },
      {
        "<leader>uh",
        "<cmd>Hardtime toggle<cr>",
        desc = "Hardtime Toggle",
        mode = "n",
      },
      {
        "<leader>uH",
        "<cmd>Hardtime report<cr>",
        desc = "Hardtime Report",
        mode = "n",
      },
      {
        "<leader>up",
        "<cmd>Precognition toggle<cr>",
        desc = "Precognition Toggle",
        mode = "n",
      },
      {
        "<leader>un",
        "<cmd>Nvimesweeper<cr>",
        desc = "Nvimesweeper",
        mode = "n",
      },
      {
        "<leader>um",
        MiniMap.toggle,
        desc = "MiniMap Toggle",
        mode = "n",
      },
      {
        "<leader>uM",
        MiniMap.refresh,
        desc = "MiniMap Refresh",
        mode = "n",
      },
    })
  end,
}
