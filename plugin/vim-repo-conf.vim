" vim-repo-conf.vim - Vim Repo Conf
" Author: Aner Lucero
" Version: 0.1

" The usual guard that prevents the plugin from being loaded multiple times
" also skips loading the plugin if we are running in compatible mode
" or if the vim version is too old (less than 7.0 in this case)
if exists("g:loaded_vim_repo_conf") || &cp || v:version < 700
     finish
endif
let g:loaded_vim_repo_conf = 1

function! s:main()
	" Check if we are at a git repository
	let output = system("git -C " . getcwd() . " rev-parse")
	let is_git_repo = v:shell_error

	if is_git_repo == 0
		let repo_root = substitute(system("git rev-parse --show-toplevel"), '\n\+$', '', '')
		if exists("g:vim_repo_conf")
			if has_key(g:vim_repo_conf, repo_root)
				echom "[vim-repo-conf] Loading:" . g:vim_repo_conf[repo_root]
				execute "source " . g:vim_repo_conf[repo_root]
			else
				echom "[vim-repo-conf] No key:" . repo_root . " " . string(g:vim_repo_conf)
			endif
		endif
	endif

endfunction

call s:main()
