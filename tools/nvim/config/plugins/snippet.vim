 let g:UltiSnipsUsePythonVersion = 3 


 " UltiSnipsSnippetsDir is where to save snips when you type :UltiSnipsEdit to create a snip.
 let g:UltiSnipsSnippetsDir = "~/.config/nvim/plugged/vim-snippets/mysnippets"
 " UltiSnipsSnippetDirectories is where ultisnips searchs snips.
 let g:UltiSnipsSnippetDirectories=["mysnippets"]

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
