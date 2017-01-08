augroup autocommands
    autocmd!

    " Source vimrc when saved
    autocmd BufWritePost ~/.vim/vimrc source %
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc

    " Install plugins when saved
    autocmd BufWritePost ~/.vim/config/plugins.vim silent source $MYVIMRC|PluginInstall

    " Create a ctags file if it doesn't exist when Rooter changes the cwd
    autocmd User RooterChDir !~/.vim/ctag_generators/php.vim; ~/.vim/ctag_generators/php__laravel_vendor.sh

augroup END
