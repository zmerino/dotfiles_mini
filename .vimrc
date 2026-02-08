
syntax on
filetype plugin indent on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cursorline
set hidden

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Run Flake8 on save
autocmd BufWritePost *.py :!flake8 %

" Run Black to format on save
autocmd BufWritePre *.py :silent! !black %

" NOTE: linters can be used if `pip3 install black flake8 isort and `sudo apt install vim-pymode` can be executed.
" Then in NORMAL mode hit ':' and then type `!flake8 %` or `!black %` inside of vim. 
