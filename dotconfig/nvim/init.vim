
" Plugin Section
call plug#begin("~/.vim/plugged")

" Colorschemes
Plug 'markvincze/panda-vim'
Plug 'dracula/vim'

" Languages (using LSP)
Plug 'ekalinin/Dockerfile.vim'
" Plug 'neovim/nvim-lspconfig'

" Language Server Client
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }


Plug 'rust-lang/rust.vim',         { 'for': 'rust' }

" Tools
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wsdjeg/FlyGrep.vim'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()


"Config Section

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
set number
set nowrap
set autochdir

colorscheme dracula

" Tab size
set tabstop=4
set shiftwidth=4
set smarttab

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let g:rustfmt_autosave = 1
