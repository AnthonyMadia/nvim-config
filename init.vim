set nocompatible		" be iMproved, required
set number
filetype off 			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

