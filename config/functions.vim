" RESTORE THE LAST CURSOR POSITION
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

function! Psr4NamespaceGet()
    let s:cwd = expand("%:h")

    let s:filepath = s:cwd."/composer.json"
    let s:exists = len(glob(s:filepath, 0, 1))
    
    if (s:exists > 0)
        return split(s:cwd, '/')[-1]
    endif

    let s:rcwd = reverse(split(s:cwd, '/'))
    let s:cwd .= '/'
    let s:depth = 0

    for s:node in s:rcwd
        let s:cwd = s:cwd.'../'
        let s:filepath = s:cwd."composer.json"
        let s:exists = len(glob(s:filepath, 0, 1))
        if (s:exists > 0)
            return join(reverse(s:rcwd[0:s:depth]), '\')
        endif
        let s:depth = s:depth + 1
    :endfor

    return ''
endfunction

function! Psr4NamespaceInsert()
    let s:namespace = Psr4NamespaceGet()
    if (len(s:namespace) > 0)
        exe "normal ggjjccnamespace ".s:namespace.";"
    endif
endfunction
