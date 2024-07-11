return {
  'nathom/filetype.nvim',
  config = function()
    require('filetype').setup {
      overrides = {
        extensions = {
          tf = 'terraform',
          tfvars = 'terraform',
          tfstate = 'json',
        },
      },
    }
    local nvim_tmux_nav = require 'nvim-tmux-navigation'
  end,
}
