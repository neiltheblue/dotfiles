return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "MaximilianLloyd/ascii.nvim" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")
    local ascii = require("ascii")
    dashboard.section.header.val = {
      [[             ,,,,,,             ]],
      [[         o#'9MMHb':'-,o,        ]],
      [[      .oH":HH$' "' ' -*R&o,     ]],
      [[     dMMM*""'`'      .oM"HM?.   ]],
      [[   ,MMM'          "HLbd< ?&H\   ]],
      [[  .:MH ."\          ` MM  MM&b  ]],
      [[ . "*H    -        &MMMMMMMMMH: ]],
      [[ .    dboo        MMMMMMMMMMMM. ]],
      [[ .   dMMMMMMb      *MMMMMMMMMP. ]],
      [[ .    MMMMMMMP        *MMMMMP . ]],
      [[      `#MMMMM           MM6P ,  ]],
      [[  '    `MMMP"           HM*`,   ]],
      [[   '    :MM             .- ,    ]],
      [[    '.   `#?..  .       ..'     ]],
      [[       -.   .         .-        ]],
      [[         ''-.oo,oo.-''          ]],
    }

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    dashboard.section.header.val = {
      [[                                                       ]],
      [[( (    /(  ____ \__   __( \   |\     /\__   __(       )]],
      [[|  \  ( | (    \/  ) (  | (   | )   ( |  ) (  | () () |]],
      [[|   \ | | (__      | |  | |   | |   | |  | |  | || || |]],
      [[| (\ \) |  __)     | |  | |   ( (   ) )  | |  | |(_)| |]],
      [[| | \   | (        | |  | |    \ \_/ /   | |  | |   | |]],
      [[| )  \  | (____/\__) (__| (____/\   / ___) (__| )   ( |]],
      [[|/    )_|_______|_______(_______/\_/  \_______//     \|]],
      [[                                                       ]],
    }

    dashboard.section.header.opts.hl = "Error"
    dashboard.section.header.opts.position = "center"
    alpha.setup(dashboard.opts)
  end,
}
