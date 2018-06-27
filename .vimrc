"============================================
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Custom plugins
"Plugin 'rip-rip/clang_complete'             " c++ autocomplete
"Plugin 'octol/vim-cpp-enhanced-highlight'   " c++ highlight
Plugin 'tpope/vim-fugitive'                 " git
Plugin 'scrooloose/nerdtree'                " filetree explorer
Plugin 'tpope/vim-surround'                 " surround
Plugin 'bling/vim-airline'                  " statusline
Plugin 'vim-airline/vim-airline-themes'     " statusline themes

call vundle#end()
filetype plugin indent on
" ===========================================

syn on
set mouse=a
set listchars=eol:¬,tab:>·,extends:>,precedes:<,space:␣
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
map <C-n> :NERDTreeToggle<CR>

if &diff
    set cursorline
    map Q :cquit<CR>
    map ] ]c
    map [ [c
    map G :execute '!git add %' <bar> :qa<CR>
    colorscheme github
    let g:airline_theme="sol"
endif
