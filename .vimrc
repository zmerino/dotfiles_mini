
syntax on
filetype plugin indent on
set number
" set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
" set smartindent
set cindent
set cursorline
set hidden

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setlocal indentkeys-=0#
autocmd FileType python set colorcolumn=79
autocmd FileType python set textwidth=79
autocmd FileType python set formatoptions+=t


" --- vim-plug ---
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
call plug#end()

" --- Python lint/format ---

let g:ale_linters = { 'python': ['flake8', 'ruff']}
let g:ale_fixers  = { 'python': ['black'] }
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1

" If you installed tools with pip --user, ensure Vim can find them
let $PATH .= ':' . expand('~/.local/bin')

" NOTE: linters can be used if `pip3 install black ruff flake8 isort and `sudo apt install vim-pymode` can be executed.
" ALE was installed via "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
