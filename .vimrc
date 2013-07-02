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
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'yuroyoro/vim-autoclose'
Bundle 'Shougo/vimproc.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
"-------------------------------------
" neocomplecache
"-------------------------------------
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion= 1
let g:neocomplcache_min_syntax_lengoh = 3


"-------------------------------------------------------------------------------
"" ステータスライン StatusLine
"-------------------------------------------------------------------------------
set laststatus=2 " 常にステータスラインを表示

"カーソルが何行目の何列目に置かれているかを表示する
set ruler

" vim-powerlineでフォントにパッチを当てないなら以下をコメントアウト
" let g:Powerline_symbols = 'fancy'
    
" 自動的に QuickFix リストを表示する
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
autocmd QuickfixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin

function! GetB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return String2Hex(c)
endfunction

" help eval-examples
" The function Nr2Hex() returns the Hex string of a number.
func! Nr2Hex(nr)
  let n = a:nr
  let r = ""
  while n
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc

" The function String2Hex() converts each character in a string to a two
" character Hex string.
func! String2Hex(str)
  let out = ''
  let ix = 0
  while ix < strlen(a:str)
    let out = out . Nr2Hex(char2nr(a:str[ix]))
    let ix = ix + 1
  endwhile
  return out
endfunc    

" set color
syntax enable
set background=dark

let g:solarized_visibility = "high"
let g:solarized_contrast = "high""

colorscheme solarized

Bundle 'https://github.com/altercation/vim-colors-solarized.git' 
call togglebg#map("<F5>")
