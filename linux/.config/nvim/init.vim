" 	# auto-install vim-plug
if empt(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Sourcing config files
	source ~/.config/nvim/modules/plugins.vim
	source ~/.config/nvim/modules/keybinds.vim
	source ~/.config/nvim/modules/quickfix.vim

" Config
" 	# Appearence
	color codedark
	set cursorline
	set number
	set relativenumber

	set nocompatible
	set updatetime=100
	set timeoutlen=500
	set autochdir
	set autoread
	set noswapfile			" No swap
	set clipboard+=unnamed
	set path+=**			" Searches current directory recursively.
	set wildmenu			" Display all matches when tab complete.
	set incsearch			" Incremental search
	set hidden			" Needed to keep multiple buffers open

	set nobackup			" No auto backups
	" set clipboard=unnamedplus     " Copy/paste to clipboard

"       Foldeing config
	set foldlevel=99
	set foldcolumn=3

	set foldmethod=indent

	function! CustomFold()
	  return printf('❄️ %6d%s', v:foldend - v:foldstart + 1, getline(v:foldstart))
	endfunction

	set fillchars=fold:\ | set foldtext=CustomFold() 

"	# Netrw
	let g:netrw_winsize = 25		"Set panel size
	let g:netrw_localcopydircmd = 'cp -r'	"Enable recursive copy
	let g:netrw_banner = 0			"Hide banner
	let g:netrw_keepdir = 0
	hi! link netrwMarkFile Search		"Highlight marked files

"	# Syntax for files
	autocmd BufNewFile,BufRead *.xxd set syntax=xxd
	autocmd BufNewFile,BufRead vifmrc set filetype=vim

"	# Disable newline comment
	autocmd FileType * setlocal formatoptions-=c
		\ formatoptions-=r formatoptions-=o
