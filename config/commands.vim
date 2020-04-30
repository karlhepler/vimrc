" Toggle ALE fixer https://github.com/dense-analysis/ale/issues/1353#issuecomment-424677810
command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"
