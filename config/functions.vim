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

" GET THE PSR-4 NAMESPACE OF THE CURRENT FILE
function! Psr4NamespaceGet()
    " Get the current path
    let s:cwd = expand("%:h")
    
    " If composer.json exists on cwd,
    " then return the last part of the path
    if empty(glob(s:cwd."/composer.json")) == 0
        return split(s:cwd, '/')[-1]
    endif

    " Split cwd & reverse it & prep vars for loop
    let s:rcwd = reverse(split(s:cwd, '/'))
    let s:cwd .= '/'
    let s:depth = 0

    " Loop through rcwd to find matches
    for s:node in s:rcwd
        " Append a directory up to cwd & set the filepath
        let s:cwd = s:cwd.'../'
        let s:filepath = s:cwd."composer.json"

        " If the file exists, then return the namespace
        if empty(glob(s:filepath)) == 0
            " Get the namespace list, in the correct order,
            " to the current depth. Then, get the index of
            " the first occurrence of a capitalized word
            let s:path_list = reverse(s:rcwd[0:s:depth])
            let s:start_index = match(s:path_list, '\C^[A-Z]')

            " If there are no matches, then there is no namespace
            if s:start_index == -1
                return ''
            endif

            " Return the namespace in the correct format
            return join(s:path_list[s:start_index :], '\')
        endif

        " Increase the depth
        let s:depth = s:depth + 1
    endfor

    " Return nothing
    return ''
endfunction

" INSERT THE PSR-4 NAMESPACE OF THE CURRENT FILE
function! Psr4NamespaceInsert()
    " Grab the namespace
    let s:namespace = Psr4NamespaceGet()

    " Replace any current namespace if it exists
    if empty(s:namespace) == 0
        exe "normal inamespace ".s:namespace.";"
    endif
endfunction
