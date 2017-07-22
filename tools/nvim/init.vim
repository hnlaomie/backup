let g:python_host_prog='/home/laomie/tools/pyenv/versions/3.6.2/bin/python'
let g:python3_host_prog = '/home/laomie/tools/pyenv/versions/3.6.2/bin/python3'
let g:loaded_python_provider = 1

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

" code complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" python
Plug 'zchee/deoplete-jedi'
Plug 'Chiel92/vim-autoformat'

" snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" utilities
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'neomake/neomake'
" Plug 'airblade/vim-gitgutter'

" themes
Plug 'nanotech/jellybeans.vim'

call plug#end()

source ~/.config/nvim/config/functions.vim
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/filetypes.vim
source ~/.config/nvim/config/extended.vim
source ~/.config/nvim/config/mappings.vim

source ~/.config/nvim/config/plugins/nerdtree.vim
source ~/.config/nvim/config/plugins/tagbar.vim
source ~/.config/nvim/config/plugins/deoplete.vim
source ~/.config/nvim/config/plugins/snippet.vim
source ~/.config/nvim/config/plugins/theme.vim
source ~/.config/nvim/config/plugins/lightline.vim
source ~/.config/nvim/config/plugins/autoformat.vim
