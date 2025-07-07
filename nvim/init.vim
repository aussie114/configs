lua require("config")

colorscheme catppuccin_frappe

set number
set showmatch
set ignorecase
set hlsearch
set tabstop=4
set autoindent
set shiftwidth=4
set cc=110
syntax on
set clipboard=unnamedplus
set ttyfast
set nowrap
set guicursor=
set noswapfile

autocmd InsertEnter * set guicursor=i:hor20
autocmd InsertLeave * set guicursor=n:block

nnoremap <C-S> :w<CR>

