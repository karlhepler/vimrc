augroup autocommands
    autocmd!

    " SOURCE VIMRC WHEN SAVED
    autocmd BufWritePost ~/.vim/vimrc source %
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc

    " FIX GUTTER ON SAVE
    autocmd BufWritePost call gitgutter#highlight#define_sign_column_highlight()

    " INSTALL PLUGINS WHEN SAVED
    autocmd BufWritePost ~/.vim/plugins.vim silent source $MYVIMRC|call PluginCleanInstallUpdate()

    " CREATE A CTAGS FILE IF IT DOESN'T EXIST WHEN ROOTER CHANGES THE CWD
    autocmd User RooterChDir :RebuildAllTags

    " JUMP TO LAST CURSOR POSITION ON FILE LOAD
    autocmd BufWinEnter * call ResCur()

augroup END
