return {
  {
    'tpope/vim-fugitive',
    event = 'VeryLazy',
    cmd = { 'Git', 'G', 'Gstatus', 'Gblame', 'Gpush', 'Gpull' },
    keys = {
      { '<leader>gs', ':Git<CR>', desc = 'Git status' },
      { '<leader>gb', ':Git blame<CR>', desc = 'Git blame' },
    },
  },
}
