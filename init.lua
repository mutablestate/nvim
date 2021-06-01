-- PACKAGE
vim.cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt=true}

-- EDITOR

paq 'folke/tokyonight.nvim'
paq{'neoclide/coc.nvim', branch='release'}
paq 'ojroques/nvim-hardline'
paq 'jiangmiao/auto-pairs'
paq 'airblade/vim-gitgutter'
paq 'tpope/vim-surround'
paq 'junegunn/fzf'
paq 'junegunn/fzf.vim'
paq 'akinsho/nvim-toggleterm.lua'

-- LANGUAGE
paq 'pangloss/vim-javascript'
paq{'evanleck/vim-svelte', branch='main'}
paq 'leafOfTree/vim-vue-plugin'
paq 'elixir-editors/vim-elixir'

-- LINT
paq 'dense-analysis/ale'

-- FORMAT
vim.cmd "command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')"

-- SETTINGS
require('settings')

-- SETUP
require('hardline').setup {
  bufferline = false,
  theme = 'one',   -- available: 'one', 'nord', 'gruvbox', 'gruvbox_minimal'
  sections = {
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'med', item = require('hardline.parts.git').get_item, hide = 80},
    '%<',
    {class = 'med', item = require('hardline.parts.filename').get_item},
    {class = 'med', item ='%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 80},
    {class = 'mode', item = require('hardline.parts.line').get_item}
  },
  bufferline_settings = {
    exclude_terminal = false,
    show_index = false,
  },
}
require("toggleterm").setup {
  size = vim.o.columns * 0.4,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  persist_size = true,
  direction = 'vertical',
  close_on_exit = true,
  shell = vim.o.shell
}

