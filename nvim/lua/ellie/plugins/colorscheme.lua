
return {
  {
    "Shatur/neovim-ayu",
    priority = 1000, -- Make sure to load this before all the other start plugins
    config = function()  -- This starts the config function
      require('ayu').setup({
        mirage = false, -- Set to `true` for the mirage variant
        terminal = true, -- Allow ayu to manage terminal colors
        overrides = {
          Normal = { bg = "#fafafa" }, -- Approximate 85% transparency for dark background
        },
      })

      -- Load the colorscheme here
      vim.cmd([[colorscheme ayu-light]]) -- You can change this to ayu-dark or ayu-mirage
    end,  -- This closes the config function
  },
}

