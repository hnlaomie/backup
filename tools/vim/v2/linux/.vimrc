set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

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
" Plug 'neomake/neomake'
" Plug 'airblade/vim-gitgutter'

" themes
Plug 'nanotech/jellybeans.vim'

call plug#end()

source ~/.vim/config/functions.vim
source ~/.vim/config/general.vim
source ~/.vim/config/filetypes.vim
source ~/.vim/config/extended.vim
source ~/.vim/config/mappings.vim

source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/tagbar.vim
source ~/.vim/config/plugins/deoplete.vim
source ~/.vim/config/plugins/deoplete-jedi.vim
source ~/.vim/config/plugins/snippet.vim
source ~/.vim/config/plugins/theme.vim
source ~/.vim/config/plugins/lightline.vim
source ~/.vim/config/plugins/autoformat.vim
