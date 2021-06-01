-- settings

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


---- OPTIONS ----

local indent = 2
opt('b', 'expandtab', true)                           -- Use spaces instead of tabs
opt('b', 'shiftwidth', indent)                        -- Size of an indent
opt('b', 'smartindent', true)                         -- Insert indents automatically
opt('b', 'tabstop', indent)                           -- Number of spaces tabs count for
opt('o', 'completeopt', 'menuone,noinsert,noselect')  -- Completion options (for deoplete)
opt('o', 'hidden', true)                              -- Enable modified buffers in background
opt('o', 'ignorecase', true)                          -- Ignore case
opt('o', 'joinspaces', false)                         -- No double spaces with join after a dot
opt('o', 'scrolloff', 4 )                             -- Lines of context
opt('o', 'shiftround', true)                          -- Round indent
opt('o', 'sidescrolloff', 8 )                         -- Columns of context
opt('o', 'smartcase', true)                           -- Don't ignore case with capitals
opt('o', 'splitbelow', true)                          -- Put new windows below current
opt('o', 'splitright', true)                          -- Put new windows right of current
opt('o', 'termguicolors', true)                       -- True color support
opt('o', 'wildmode', 'list:longest')                  -- Command-line completion mode
opt('w', 'list', true)                                -- Show some invisible characters (tabs...)
opt('w', 'number', true)                              -- Print line number
opt('w', 'relativenumber', false)                     -- Relative line numbers
opt('w', 'wrap', false)                               -- Disable line wrap


---- MAPPINGS ----

g.mapleader = ' '

map('', '<C-p>', ':<C-u>FZF<CR>')
map('', '<C-s>', ':<C-u>update<CR>')
map('', '<C-J>', '<C-W><C-J')
map('', '<C-K>', '<C-W><C-K>')
map('', '<C-L>', '<C-W><C-L>')
map('', '<C-H>', '<C-W><C-H>')

vim.api.nvim_set_keymap('', '<Esc>', [[<C-\><C-n>]], {noremap = true})


---- THEME ----

g.tokyonight_style = "storm"
g.tokyonight_italic_functions = false
g.tokyonight_sidebars = { "quickfix", "__vista__", "terminal" }

cmd[[colorscheme tokyonight]]

