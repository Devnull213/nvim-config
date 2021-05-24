
set encoding=UTF-8
set nocompatible              
set nolist
filetype plugin indent on               


call plug#begin('~/.vim/plugged')

Plug 'vim-python/python-syntax'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/vim-gitbranch' 
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter' 
"Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'mengelbrecht/lightline-bufferline'
call plug#end()


filetype indent on
nmap <C-n> :NERDTreeToggle<CR>
nmap <f5> :Files<CR>
inoremap ii  <Esc>
set shiftwidth=4

"--- Put numbers on vim rows ---

set number
set relativenumber

"--- Highlight Syntaxis ---

syntax on
let g:python_highlight_all = 1

" lightline

let g:lightline = {
  \ 'active': {
  \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
  \   'right': [['filetype', 'percent', 'lineinfo'], ['gitbranch']]
  \ },
  \ 'inactive': {
  \   'left': [['inactive'], ['relativepath']],
  \   'right': [['bufnum']]
  \ },
  \ 'component': {
  \   'bufnum': '%n',
  \   'inactive': 'inactive'
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name',
  \ },
  \ 'subseparator': {
  \   'left': '',
  \   'right': ''
  \ },
  \ 'tabline': {
  \   'left': [ ['buffers'] ],
  \   'right': [[ 'close' ]]
  \},
  \ 'component_expand': {
  \   'buffers': 'lightline#bufferline#buffers'
  \ },
  \ 'component_type': {
  \   'buffers': 'tabsel'
  \ }
  \ }

" Leader key

let mapleader=","

set showtabline=2

if has('gui_running')
    set guioptions-=e

endif

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>d :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>x :bd<CR>
nnoremap <Leader>o :enew<CR>
nnoremap <Leader>e :e
nnoremap <C-p> :bp<CR>
"nnoremap <C-n> :bn<CR>
nnoremap <Leader>g :e#<CR>


set laststatus=2

if !has('gui_running')
    set t_Co=256
endif

"easymotion config

nmap <Leader><space> <Plug>(easymotion-s2)


"--- Enable Folding
set foldmethod=manual

"--- Emmet config

let g:user_emmet_leader_key=','

"coc

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

autocmd FileType scss setl iskeyword+=@-@

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()

nmap <leader>re <Plug>(coc-rename)

" gruvbox

autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

"syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"disable syntastic styles messages

let g:syntastic_quiet_messages = { "type": "style" }


