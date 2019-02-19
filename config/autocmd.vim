augroup autocommands
    autocmd!

    " INSTALL PLUGINS WHEN SAVED
    autocmd BufWritePost ~/.vim/plugins.vim silent source $MYVIMRC|call PluginCleanInstallUpdate()|call RefreshDisplay()

    " SOURCE VIMRC WHEN SAVED
    autocmd BufWritePost ~/.vim/vimrc source %|call RefreshDisplay()
    autocmd BufWritePost ~/.vim/config/*.vim source ~/.vim/vimrc|call RefreshDisplay()

    " FIX GUTTER ON SAVE
    autocmd BufWritePost call gitgutter#highlight#define_sign_column_highlight()

    " JUMP TO LAST CURSOR POSITION ON FILE LOAD
    autocmd BufWinEnter * silent! call ResCur()

    " FORCE QUICKFIX TO ALWAYS OPEN FULL WIDTH
    autocmd FileType qf wincmd J

    " FZF RG
    command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --smart-case --no-ignore --hidden --follow --color=always '.shellescape(<q-args>).' --glob "!{.git/*,.tags}"', 1, <bang>0)
augroup END

augroup emeraldlayout
  autocmd!

  " RUN PRETTIER ON SAVE FOR EMERALD LAYOUT STUFF
  autocmd BufWritePost $HOME/bronto/emerald-layout/*.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
augroup END

augroup mailapp
  autocmd!

  " TAB WIDTH FOR JS FILES
  autocmd BufNewFile,BufRead $HOME/bronto/mail_app/**/*.js setlocal tabstop=4 shiftwidth=4 softtabstop=4

  " SCP MAIL_APP FILES ON SAVE
  autocmd BufWritePost $HOME/bronto/mail_app/* silent! call CopyToDude()
augroup END
