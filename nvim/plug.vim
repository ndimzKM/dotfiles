" post install (yarn install | npm install) then load plugin only for editing supported files
if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch' : 'release'}
  Plug 'nvim-lua/completion-nvim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'leafgarland/typescript-vim'
  Plug 'shougo/vimfiler.vim'
  Plug 'shougo/unite.vim'
  Plug 'sbdchd/neoformat'
  Plug 'udalov/kotlin-vim'
  Plug 'sainnhe/gruvbox-material'
  Plug 'morhetz/gruvbox'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  let g:coc_global_extensions = ['coc-tsserver',
\'coc-python',
\ 'coc-pydocstring',
\ 'coc-json',
\ 'coc-html-css-support',
\ 'coc-css',
\ 'coc-sql',
\ 'coc-yaml']
" Plug 'sheerun/vim-polyglot',
Plug 'preservim/nerdcommenter'
endif


call plug#end()
