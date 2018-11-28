filetype on 
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
syntax on


set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

" terraform
let g:terraform_align=1
let g:terraform_commentstring='//%s'
set laststatus=2
set noshowmode

set backspace=2

set showcmd
set ignorecase
set smartcase
set expandtab
set smarttab
set hlsearch
set number
set noswapfile
set cursorline
set autoindent

set shiftwidth=4
set softtabstop=4
set scrolloff=8
set sidescrolloff=10

set timeoutlen=1000
set ttimeoutlen=0

" for cross-terminal clipboard support
set clipboard=unnamed
if $TMUX == ''
        set clipboard+=unnamed
endif

:noremap / :set hlsearch<CR>/

" toggle paste mode
:noremap <F2> :set paste! nopaste?<CR>

" toggle number lines
:noremap <F3> :set nonumber! nonumber?<CR>

" toggle search highlights
:noremap <F4> :set hlsearch! hlsearch?<CR>

" change tab
:noremap <F5> :tabn<CR>
:noremap <F6> :tabp<CR>

colorscheme nord
set background=dark

function TrimWhitespace()
  %s/\s*$//
  ''
:endfunction
command! Trim call TrimWhitespace()

" Shows the highlight group of whatever's under the cursor
 map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
 \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
 \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

set hidden
let mapleader=","
nmap <leader>n :enew<cr>
nmap <leader><leader> :bnext<CR>
nmap <leader>. :bprevious<CR>
nmap <leader>l :ls<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

