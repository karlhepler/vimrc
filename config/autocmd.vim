augroup autocommands
    autocmd!

    " INSTALL PLUGINS WHEN SAVED
    autocmd BufWritePost ~/.vim/plugins.vim silent source $MYVIMRC|call PluginCleanInstallUpdate()|call gitgutter#highlight#define_sign_column_highlight()

    " SOURCE VIMRC WHEN SAVED
    autocmd BufWritePost ~/.vim/vimrc source %|call gitgutter#highlight#define_sign_column_highlight()
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc|call gitgutter#highlight#define_sign_column_highlight()

    " FIX GUTTER ON SAVE
    autocmd BufWritePost call gitgutter#highlight#define_sign_column_highlight()

    " JUMP TO LAST CURSOR POSITION ON FILE LOAD
    autocmd BufWinEnter * silent! call ResCur()

    " FORCE QUICKFIX TO ALWAYS OPEN FULL WIDTH
    autocmd FileType qf wincmd J

    " FZF RG
    command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
    \   <bang>0)

augroup END
