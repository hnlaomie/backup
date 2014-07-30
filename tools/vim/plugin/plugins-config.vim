""""""""""""""""""""""""""""""
" => vundle plugin
"
" mkdir -p ~/.vim/bundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

if has('win32') || has('win64')
    set rtp+=$HOME/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
else
    " Usual quickstart instructions
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

""""""""""""""""""""""""""""""
" => Nerdtree plugin
""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
"download from vim.org
let g:NERDTreeDirArrows=0
let NERDTreeWinSize=35
let g:netrw_banner       = 0
let g:netrw_keepdir      = 0
let g:netrw_liststyle    = 1 
let g:netrw_sort_options = 'i'
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

""""""""""""""""""""""""""""""
" => undotree plugin
""""""""""""""""""""""""""""""
Bundle 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir='~/.vim/.undodir/'
    set undofile
endif

""""""""""""""""""""""""""""""
" => jedi-vim plugin
""""""""""""""""""""""""""""""
" Bundle 'davidhalter/jedi-vim'
" if has("python")
"     python sys.path.append("/usr/lib/python3.3/site-packages")
" endif
" autocmd FileType python setlocal completeopt-=preview
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<S-Space>"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "1" 

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


""""""""""""""""""""""""""""""
" => vdebug plugin
""""""""""""""""""""""""""""""
" Bundle 'joonty/vdebug'

""""""""""""""""""""""""""""""
" => vim-json
""""""""""""""""""""""""""""""
" Bundle 'leshill/vim-json'

""""""""""""""""""""""""""""""
" => vim-snippets plugin
""""""""""""""""""""""""""""""
Bundle 'honza/vim-snippets'
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => riv.vim plugin
""""""""""""""""""""""""""""""
"Bundle 'Rykka/riv.vim'


""""""""""""""""""""""""""""""
" => vim-fugitive plugin
""""""""""""""""""""""""""""""
" Bundle 'tpope/vim-fugitive'


""""""""""""""""""""""""""""""
" => vim-colors-solarized plugin
""""""""""""""""""""""""""""""
" Bundle 'altercation/vim-colors-solarized'


""""""""""""""""""""""""""""""
" => ctrlp.vim plugin
""""""""""""""""""""""""""""""
" Bundle 'kien/ctrlp.vim'
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>
"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => vim-multiple-cursors plugin
""""""""""""""""""""""""""""""
" Bundle 'terryma/vim-multiple-cursors'
" let g:multi_cursor_next_key="\<C-s>"


""""""""""""""""""""""""""""""
" => powerline plugin
""""""""""""""""""""""""""""""
"Bundle 'Lokaltog/powerline'
"set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = "fancy"


""""""""""""""""""""""""""""""
" => airline plugin
""""""""""""""""""""""""""""""
"Bundle 'bling/vim-airline'


""""""""""""""""""""""""""""""
" => minibufexpl.vim plugin
""""""""""""""""""""""""""""""
Bundle 'fholgado/minibufexpl.vim'


""""""""""""""""""""""""""""""
" => vim-scala plugin
""""""""""""""""""""""""""""""
Bundle 'derekwyatt/vim-scala'

""""""""""""""""""""""""""""""
" => vim-go plugin
""""""""""""""""""""""""""""""
Bundle 'fatih/vim-go'


""""""""""""""""""""""""""""""
" => neocomplete plugin
""""""""""""""""""""""""""""""
Bundle 'Shougo/neocomplete.vim'


""""""""""""""""""""""""""""""
" => taglist scripts 
""""""""""""""""""""""""""""""
Bundle 'taglist.vim'
set tags=.\tags,tags
" taglist setup
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Inc_Winwidth=0
let Tlist_Compact_Format=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
"nnoremap <C-l> :TlistToggle<CR>
nnoremap <leader>tt :TlistToggle<cr>


""""""""""""""""""""""""""""""
" => dbext plugin
""""""""""""""""""""""""""""""
"Bundle 'dbext.vim'
" let g:dbext_default_profile_SQLITE_generic = 'type=SQLITE:SQLITE_bin=e:\tools\sqlite3.4\sqlite3.exe:dbname=f:\temp\uss-es.db3'
" let g:dbext_default_profile_ORA_generic = 'type=ORA:user=lwtest:passwd=lwtest@lwdb_192.168.255.122:dbname=lwdb:host=192.168.255.122:port=1521'


""""""""""""""""""""""""""""""
" => moria plugin
""""""""""""""""""""""""""""""
Bundle 'moria'

filetype plugin indent on      " required!
