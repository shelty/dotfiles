" javascript

Bundle 'JavaScript-syntax'
Bundle 'pangloss/vim-javascript'
autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen

