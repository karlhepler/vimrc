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
    au FileType qf wincmd J

    " DETECT INDENT FOR ALL PHP FILES
    autocmd BufReadPost ~/bronto/**/* :DetectIndent 

augroup END
