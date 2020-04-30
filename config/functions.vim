" RESTORE THE LAST CURSOR POSITION
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

" CLEAN, INSTALL, AND UPDATE PLUGINS
function! PluginCleanInstallUpdate()
    exe "PlugClean!"
    exe "PlugUpdate!"
endfunction

function! RefreshDisplay()
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction
