" Set font according to system
if has("mac") || has("macunix")
    set gfn=Source\ Code\ Pro:h15,Menlo:h16
elseif has("win32") || has("win64")
    "set gfn=Lucida\ Console:h12:cANSI
    set gfn=Consolas:h12:cANSI
    set gfw=新宋体:h12:cGB2312
elseif has("linux")
    set gfn=Source\ Code\ pro:h16,Bitstream\ Vera\ Sans\ Mono:h16
elseif has("unix")
    "set gfn=Monospace\ 13
    set gfn=Bitstream\ Vera\ Sans\ Mono\ 16
    set gfw=WenQuanYi\ Micro\ Hei\ Mono\ 16
endif

" Open MacVim in fullscreen mode
if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif
