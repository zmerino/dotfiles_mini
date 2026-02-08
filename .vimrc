
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


# NOTE: linters can be used if `pip3 install black flake8 isort` can be executed.
# Then `:!flake8 %` or `:!black %` can be used inside of vim. 
