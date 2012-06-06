" Common settings

" Disaboled vim compatible-mode
set nocompatible

" Disaboled filetype plugin 
filetype off

" Enabled syntax highlight
syntax on

" Display ohter buffer without saving current buffer
set hidden

" Command-line completion
set wildmenu

" show partial commands in the last line
set showcmd

" Enabled Highlight search
set hlsearch

" set search mode
set ignorecase
set smartcase

" Enabled backspace with insert-mode,aout-indent-mode,eol-mode 
set backspace=indent,eol,start

" Enabled auto-indent
set autoindent

" Show ruler
set ruler

" Show status line
set laststatus=2

" Confirm to save the current buffer if current buffer is changed
set confirm

" Disabled  beep and visualbell 
set visualbell
set t_vb=

" Command-line 2lines
set cmdheight=2

" Show line number
set number

" keycode's timeout 
set notimeout ttimeout ttimeoutlen=200

" Switch paste mode 
set pastetoggle=<F11>

" tab settings
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab

" Release highlight <C-L>
nnoremap <C-L> :nohl<CR><C-L>

"-------------------------------------
" vundle
"-------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
filetype plugin indent on
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cachefirst) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"-------------------------------------
" plugins
"-------------------------------------
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'http://git.wincent.com/command-t.git'


"-------------------------------------
" neocomplecache
"-------------------------------------
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion= 1
let g:neocomplcache_min_syntax_length = 3



