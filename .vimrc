set rtp+=$GOROOT/misc/vim
syntax on
set ignorecase
set number
set backspace=indent,eol,start
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
if has("autocmd")
    " Drupal *.module and *.install files.
    augroup module
        autocmd BufRead,BufNewFile *.module set filetype=php
        autocmd BufRead,BufNewFile *.batch set filetype=php
        autocmd BufRead,BufNewFile *.engine set filetype=php
        autocmd BufRead,BufNewFile *.install set filetype=php
        autocmd BufRead,BufNewFile *.test set filetype=php
        autocmd BufRead,BufNewFile *.inc set filetype=php
        autocmd BufRead,BufNewFile *.profile set filetype=php
        autocmd BufRead,BufNewFile *.view set filetype=php
    augroup END
endif

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <F2> :set nonumber!<CR>

nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>

inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

set showmode

set tags=tags
set wildmode=longest,list,full
set wildmenu
colorscheme jellybeans

autocmd BufWritePre * :%s/\s\+$//e
set pastetoggle=<F2>
