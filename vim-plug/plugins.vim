
call plug#begin('~/.vim/plugged')

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'vim-python/python-syntax'

" Theme
Plug 'rakr/vim-one'

"File search
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" In-file search
Plug 'easymotion/vim-easymotion'
Plug 'preservim/tagbar'

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'itchyny/vim-gitbranch' 
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter' 
"Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
call plug#end()

