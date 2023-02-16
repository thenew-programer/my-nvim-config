" --- General 

let mapleader = " "

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Color scheme
" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Neuraline Plugins
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Auto Pairs
Plug 'https://github.com/jiangmiao/auto-pairs' 

Plug 'https://github.com/vim-airline/Vim-airline'
Plug 'https://github.com/vim-airline/Vim-airline-themes'
Plug 'https://github.com/chriskempson/base16-vim'


call plug#end()



" --- Colors

set background=dark
colorscheme base16-gruvbox-dark-hard
" --- Remaps

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>q :bdelete<Cr>

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
set noshowmode " hide --insert status line
let g:airline_theme = 'base16_gruvbox_dark_hard'

" --- Autocommands

" Remove vert split 
" https://www.reddit.com/r/vim/comments/effwku/transparent_vertical_bar_in_vim/
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
set fillchars=vert:\  " there is whitespace after the backslash
augroup RemoveVertSplit
    autocmd!
    autocmd BufEnter,ColorScheme * highlight VertSplit ctermfg=1 ctermbg=None cterm=None
augroup END
