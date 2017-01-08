" Ag! Woot woot!
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Force rebuild ctags
command! RebuildTags silent! execute '!~/.vim/ctag_generators/php.sh force > /dev/null 2>&1 &' | redraw!
command! RebuildVendorTags silent! execute '!~/.vim/ctag_generators/php__laravel_vendor.sh force > /dev/null 2>&1 &'|redraw!
command! RebuildAllTags silent! execute '!~/.vim/ctag_generators/php.sh force > /dev/null 2>&1 &' | silent! execute '!~/.vim/ctag_generators/php__laravel_vendor.sh force > /dev/null 2>&1 &' | redraw!
