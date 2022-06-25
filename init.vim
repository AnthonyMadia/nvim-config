set nocompatible		" be iMproved, required
filetype off 			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']  " list of CoC extensions needed

Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'lervag/vimtex'
Plug 'inkarkat/vim-spellcheck'    " Spell Checking
Plug 'vim-scripts/ingo-library'   " Required for Spell Checking
"Plug 'Valloric/YouCompleteMe'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>

"" Quicker Tab Shortcuts
nmap <A-1> 1gt
nmap <A-2> 2gt
nmap <A-3> 3gt
nmap <A-4> 4gt
nmap <A-5> 5gt
nmap <A-6> 6gt
nmap <A-7> 7gt
nmap <A-8> 8gt
nmap <A-9> 9gt

filetype plugin indent on     " required 

set background=dark
highlight ColorColumn ctermbg=0 guibg=white
set ts=4 sw=4
set autoindent
set number 
set nobackup
set nowb
set noswapfile
set nowrap
set smartcase
set hlsearch
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent

" Appearance
set encoding=UTF-8
set number
set title
set wildmenu
syntax on 
syntax spell toplevel
"let &colorcolumn="80,".join(range(100,999),",") " Colour 80 char column and column's >100
set cursorline
"set list                 " Show whitespace characters, and configure
set listchars=tab:\|\ ,trail:·,
set relativenumber

"" Misc
set novisualbell
set pastetoggle=<F2>     " Paste mode when pressing F2
set scrolloff=100        " Dodgy Typewriter mode
set modeline             " Use modelines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline_theme = "murmur"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let NERDTreeMinimalUI  = 1
let NERDTreeDirArrows  = 1
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize  = 36

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" VimTex
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'process',
    \ 'background' : 1,
    \ 'build_dir' : 'latexmk-files',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
