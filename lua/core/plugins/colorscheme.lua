return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme 'tokyonight-night'
    vim.cmd.hi 'Comment gui=none'
  end,
}
