source $VIMRUNTIME/defaults.vim

set tabstop=4
set shiftwidth=4

nnoremap <F5> :w<cr>:make<cr>
nnoremap <backspace> :b#<cr>
nnoremap s :.s/
vnoremap s :'<,'>s/
noremap  S :%s/
