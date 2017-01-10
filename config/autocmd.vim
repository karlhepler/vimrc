augroup autocommands
    autocmd!

    " INSTALL PLUGINS WHEN SAVED
    autocmd BufWritePost ~/.vim/config/plugins.vim silent source $MYVIMRC|call PluginCleanInstallUpdate()

    " SOURCE VIMRC WHEN SAVED
    autocmd BufWritePost ~/.vim/vimrc source %
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc

    " CREATE A CTAGS FILE IF IT DOESN'T EXIST WHEN ROOTER CHANGES THE CWD
    autocmd User RooterChDir !~/.vim/ctag_generators/php.sh; ~/.vim/ctag_generators/php__laravel_vendor.sh

    " JUMP TO LAST CURSOR POSITION ON FILE LOAD
    autocmd BufWinEnter * call ResCur()

augroup END
