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
    call gitgutter#highlight#define_sign_column_highlight()
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

" MAKE THE CURSOR JUMP TO A RELATIVE POSITION IN A PARTICULAR DIRECTION.
function! RelativeJump(direction)
    let l:map = {'a':1, 's':2, 'd':3, 'f':4, 'g':5, 'h':6, 'j':7, 'k':8, 'l':9, ';':0}
    let l:num = l:map[nr2char(getchar())]*10 + l:map[nr2char(getchar())]
    if a:direction == "up"
        call cursor(line(".") - l:num, 0)
    elseif a:direction == "down"
        call cursor(l:num + line("."), 0)
    endif
    setlocal nonu nornu
endfunction
