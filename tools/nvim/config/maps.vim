" nerdtree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" tabbar
nmap tb :TagbarToggle<cr>

" you complete me
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
au FileType cpp nnoremap <Leader>g :YcmCompleter GoTo<CR>
" Goto definition with F3
map <F3> :YcmCompleter GoTo<CR><Paste>
