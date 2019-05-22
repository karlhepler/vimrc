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

function! CopyToDude()
    let l:local_path = expand('%')
    let l:relative_path = substitute(l:local_path, $HOME . '/bronto/mail_app/', '', '')
    let l:remote_path = '/usr/local/bronto/repos/mail_app/' . l:relative_path
    execute 'AsyncRun scp ' . l:local_path . ' hepler.brontolabs.local:' . l:remote_path
endfunction

function! RefreshDisplay()
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction
