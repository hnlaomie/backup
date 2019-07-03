set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

" code complete
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

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
Plug 'neomake/neomake'
" Plug 'airblade/vim-gitgutter'

" themes
Plug 'nanotech/jellybeans.vim'

" java
" Plug 'sbdchd/neoformat'
" Plug 'artur-shaik/vim-javacomplete2'

call plug#end()

source ~/.config/nvim/config/functions.vim
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/filetypes.vim
source ~/.config/nvim/config/extended.vim
source ~/.config/nvim/config/mappings.vim

source ~/.config/nvim/config/plugins/nerdtree.vim
source ~/.config/nvim/config/plugins/tagbar.vim
source ~/.config/nvim/config/plugins/deoplete.vim
source ~/.config/nvim/config/plugins/deoplete-jedi.vim
source ~/.config/nvim/config/plugins/snippet.vim
source ~/.config/nvim/config/plugins/theme.vim
source ~/.config/nvim/config/plugins/lightline.vim
source ~/.config/nvim/config/plugins/autoformat.vim
" source ~/.config/nvim/config/plugins/neoformat.vim
" source ~/.config/nvim/config/plugins/javacomplete2.vim
