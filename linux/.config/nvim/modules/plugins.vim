call plug#begin('~/.config/nvim/plugged')

" Plugins
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-eunuch'
	Plug 'airblade/vim-gitgutter'
	Plug 'vimwiki/vimwiki'
	" Plug 'dhruvasagar/vim-table-mode'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	" Plug 'mattn/emmet-vim'
	" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} "Disable if slow
	" Plug 'liuchengxu/vim-which-key'

"	# Color Schemes
	" Plug 'dracula/vim'
	" Plug 'zefei/simple-dark'
	" Plug 'ParamagicDev/vim-medic_chalk'
	" Plug 'atahabaki/archman-vim'
	" Plug 'tomasr/molokai'
	" Plug 'morhetz/gruvbox'
	" Plug 'tpope/vim-vividchalk'
	" Plug 'junegunn/seoul256.vim'
	" Plug 'joshdick/onedark.vim'
	Plug 'tomasiser/vim-code-dark'

call plug#end()

" Plugin Configs
	" GitGutter
	highlight GitGutterAdd guifg=#009900 ctermfg=Green
	highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
	highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
	let g:gitgutter_enable = 1

	" Vimwiki
	let g:vimwiki_list = [{'path':'~/Dropbox/vimwiki'}]
