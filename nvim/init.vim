syntax on
set hlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start
set guicursor=n-v-c-sm:block
" Important!!
if has('termguicolors')
    set termguicolors
endif
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_foreground = 'material'
autocmd vimenter * ++nested colorscheme gruvbox-material
" autocmd vimenter * ++nested colorscheme gruvbox
" autocmd vimenter * ++nested colorscheme nord
" colorscheme nord
"Make nvim transparent
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
"end

set number
set t_Co=256
set wildmenu
set relativenumber
set ignorecase
set nu
set nohlsearch
set hidden
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set wildignore+=*/node_modules/*
" set background=dark

"Prettier Setup
let g:neoformat_try_node_exe = 1
"autocmd BufWritePre *.js|*.ts|*.jsx|*.tsx Neoformat

call plug#begin()

Plug 'sbdchd/neoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'shougo/vimfiler.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'shougo/unite.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

call plug#end()

" fzf key mapping
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>

" other key mappings
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
map fs :VimFiler<Return>
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Experimenting with VimScript
map - dd
map <space> viw
imap <c-d> <esc>ddi
imap <c-u> <esc>~
