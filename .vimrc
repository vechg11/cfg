"option
set number
set signcolumn=yes
set tabstop=4
set shiftwidth=4
set autoindent
set termguicolors
set hidden
set ignorecase
set pumheight=15
set wildoptions+=pum
set mouse=a
set noruler
set nowrap
set noswapfile
set nobackup
set hlsearch
set incsearch

filetype plugin indent on
syntax on
set wildmenu
set fillchars=eob:\ 
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let netrw_banner=0
let mapleader=" "

"keymap
map gj 0
map gk $
nmap gp <cmd>bp<cr>
nmap gn <cmd>bn<cr>
nmap <c-x> <cmd>bd<cr>
nmap <c-s> <cmd>w<cr>
nmap <c-d> <cmd>q<cr>
nmap <c-l> <cmd>nohl<cr>

nmap <leader>e <cmd>NnnExplorer<cr>
nmap <leader>t <cmd>term<cr>
tmap <c-x> <c-\><c-n>

nmap <leader>lk <cmd>LspHover<cr>
nmap <leader>ls <cmd>LspDocumentSymbol<cr>
nmap <leader>la <cmd>LspCodeAction<cr>
nmap <leader>le <cmd>LspDiagCurrent<cr>
nmap <leader>ld <cmd>LspGotoDefinition<cr>

"plugin
packadd lsp
packadd nnn.vim
colorscheme nord
let g:nnn#command="nnn -C"
call LspAddServer([#{name: 'pylsp',
	\   filetype: 'python',
	\   path: '/usr/bin/pylsp',
	\   args: []
	\ }])
