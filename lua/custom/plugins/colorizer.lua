return {
  'NvChad/nvim-colorizer.lua',
  config = function() -- This is the function that runs, AFTER loading
    require('colorizer').setup()
  end,
}
