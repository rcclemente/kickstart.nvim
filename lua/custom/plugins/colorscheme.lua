-- added: 20240604
return {
  'flazz/vim-colorschemes',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'Tomorrow-Night-Eighties'

    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
    vim.cmd [[highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=Black gui=NONE guifg=DarkGrey guibg=Black]]
  end,
}
