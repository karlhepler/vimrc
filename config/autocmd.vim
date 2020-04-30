augroup autocommands
    autocmd!

    " INSTALL PLUGINS WHEN SAVED
    autocmd BufWritePost ~/.vim/plugins.vim silent source $MYVIMRC|call PluginCleanInstallUpdate()|call RefreshDisplay()

    " SOURCE VIMRC WHEN SAVED
    autocmd BufWritePost ~/.vim/vimrc source %|call RefreshDisplay()
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc|call RefreshDisplay()

    " JUMP TO LAST CURSOR POSITION ON FILE LOAD
    autocmd BufWinEnter * silent! call ResCur()

    " FORCE QUICKFIX TO ALWAYS OPEN FULL WIDTH
    autocmd FileType qf wincmd J

    " Bazel fix on save
    autocmd BufWritePost *.bzl,*.bazel silent !buildifier %
augroup END
