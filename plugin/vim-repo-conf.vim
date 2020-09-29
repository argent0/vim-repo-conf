" vim-repo-conf.vim - Vim Repo Conf
" Author: Aner Lucero
" Version: 0.1

" The usual guard that prevents the plugin from being loaded multiple times
" also skips loading the plugin if we are running in compatible mode
" or if the vim version is too old (less than 7.0 in this case)
if exists("g:loaded_pluginname") || &cp || v:version < 700
     finish
endif
let g:loaded_pluginname = 1

function! s:main()
	" Check if we are at a git repository
	let is_git_repo = system('git -C . rev-parse')
	echo "this is sparta"
	" is_git_repo
endfunction

call s:main()
