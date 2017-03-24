let g:python_host_prog='/home/laomie/tools/pyenv/versions/3.6.1/bin/python'
let g:python3_host_prog = '/home/laomie/tools/pyenv/versions/3.6.1/bin/python3'
let g:loaded_python_provider = 1

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

source ~/.config/nvim/config/functions.vim
source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/filetypes.vim
source ~/.config/nvim/config/extended.vim
source ~/.config/nvim/config/maps.vim

source ~/.config/nvim/config/plugins/nerdtree.vim
source ~/.config/nvim/config/plugins/tagbar.vim
source ~/.config/nvim/config/plugins/deoplete.vim
