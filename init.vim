set nocompatible		" be iMproved, required
set number
filetype off 			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>
