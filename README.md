# vim-repo-conf

Append additional configuration files depending on which git repository vim is
launched.

## Configuration

To specify the configuration file for the git repository at
`/home/user/path/to/git/repo-a` as `~/.vim/vim-repo-conf/options-a.vim` add the key
`/home/user/path/to/git/repo-a` with the value
`~/.vim/vim-repo-conf/options-a.vim` to the `g:vim_repo_conf` dictionary at your
`vimrc`.

```{vimscript}
let g:vim_repo_conf = {
	'/home/user/path/to/git/repo-a': '~/.vim/vim-repo-conf/options-a.vim',
	'/home/user/path/to/git/repo-b': '~/.vim/vim-repo-conf/options-b.vim'
	}
```

This will load `options-a.vim` when launched from any subfolder of `repo-a`.
Similarly for `repo-b`.

<!--
vim: spell
-->
