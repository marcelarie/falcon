---Example lazy.nvim specification for falcon colorscheme
---Copy this into your lazy.nvim plugins configuration file
---
---Usage:
---  In your plugins/colorschemes.lua or similar:
---  {
---    "marcelarie/falcon",
---    lazy = false,
---    priority = 1000,
---    opts = {
---      background = false,  -- Use terminal background instead of colored background
---      italic = false,      -- Enable italic text
---      bold = false,        -- Enable bold text
---      inactive = false,    -- Style inactive windows
---    }
---  }
---
---The above will automatically call require('falcon').setup(opts)
---
---Alternatively, you can use a config function:
return {
  "marcelarie/falcon",
  lazy = false,
  priority = 1000,
  config = function()
    require("falcon").setup({
      background = false,  -- false for transparent background
      italic = false,
      bold = false,
      inactive = false,
    })
  end,
}
