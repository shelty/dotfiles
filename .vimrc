" load conf 
runtime! ~/.vim/conf/*.vim

set nocompatible
filetype off

"-------------------------------------
" vundle
"-------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" set line number
:set number 

"-------------------------------------
" plugins
"-------------------------------------
Bundle 'Shougo/neocomplcache'

"-------------------------------------
"neocomplecache
"-------------------------------------
let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion= 1 
let g:neocomplcache_min_syntax_length = 3 

