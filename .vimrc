"============================================
" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" YouCompleteMe options
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Custom plugins
Plugin 'tpope/vim-fugitive'                 " git
Plugin 'scrooloose/nerdtree'                " filetree explorer
Plugin 'tpope/vim-surround'                 " surround
Plugin 'bling/vim-airline'                  " statusline
Plugin 'vim-airline/vim-airline-themes'     " statusline themes
Plugin 'Valloric/YouCompleteMe'

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
set completeopt-=preview


if &diff
    set cursorline
    map Q :cquit<CR>
    map ] ]c
    map [ [c
    map G :execute '!git add %' <bar> :qa<CR>
    colorscheme github
    let g:airline_theme="sol"
endif
