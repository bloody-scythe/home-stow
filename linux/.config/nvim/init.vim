" 	# auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif
" Sourcing config files

	source ~/.config/nvim/modules/plugins.vim
	source ~/.config/nvim/modules/keybinds.vim
	source ~/.config/nvim/modules/quickfix.vim
	source ~/.config/nvim/modules/coc.vim

" Config
" 	# Appearence

	if system("tput colors") == "256\n"
		color codedark
	else
		color elflord
	endif

	set cursorline
	set number
	set relativenumber

	set nocompatible
    set cmdheight=2
    set shortmess+=c
	set updatetime=100
	set timeoutlen=500
	set autochdir
	set autoread
	set noswapfile			" No swap
	set clipboard+=unnamed
	set path+=**			" Searches current directory recursively.
	set tabstop=4
    set shiftwidth=4
    set expandtab
	set wildmenu			" Display all matches when tab complete.
	set incsearch			" Incremental search
	set hidden			" Needed to keep multiple buffers open

	set nobackup			" No auto backups
	" set clipboard=unnamedplus     " Copy/paste to clipboard

"       Foldeing config

	set foldmethod=syntax
	" set foldmethod=indent

	set foldlevel=99
	set foldcolumn=3

    " if has("nvim-0.5.0") || has("patch-8.1.1564")
    "     set signcolumn=number
    " else
    "     set signcolumn=yes
    " endif


	" function! CustomFold()
	"   return printf('❄️ %6d%s', v:foldend - v:foldstart + 1, getline(v:foldstart))
	" endfunction

	set fillchars=fold:\ | set foldtext=CustomFold() 

"	# Netrw
	let g:netrw_winsize = 25		"Set panel size
	let g:netrw_localcopydircmd = 'cp -r'	"Enable recursive copy
	let g:netrw_banner = 0			"Hide banner
	let g:netrw_keepdir = 0
	hi! link netrwMarkFile Search		"Highlight marked files
	"Calendar
	let g:calendar_no_mappings=1


"	# Syntax for files
	autocmd BufNewFile,BufRead *.xxd set syntax=xxd
	autocmd BufNewFile,BufRead vifmrc set filetype=vim

"	# Disable newline comment
	autocmd FileType * setlocal formatoptions-=c
		\ formatoptions-=r formatoptions-=o
