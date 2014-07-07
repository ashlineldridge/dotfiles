set nocompatible
filetype off

" Use the Vundle package manager. All plugins are declared
" between the Vundle begin() and end() calls.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'tfnico/vim-gradle'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'maxbrunsfeld/vim-yankstack'

call vundle#end()
filetype plugin indent on 

" Set up the Base16 Tomorrow Dark theme
let base16colorspace=256
colorscheme base16-tomorrow
set background=dark

" Other codey settings
syntax on
set number
set ts=4

" Map F5 to switch between Solarized light and dark modes
call togglebg#map("<F5>")
" Map F6 to toggle Tagbar
nmap <F8> :TagbarToggle<cr>

" The almighty leader key
let mapleader=";"

" NERDTree configuration and key mappings
map <C-n> :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
" Allow quit command to exit Vim if the NERDTree window is the last open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1

" Supertab configuration
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1

" Yankstack configuration
let g:yankstack_map_keys = 0
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Go development key mappings
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>db :GoDocBrowser<cr>

" Tagbar / Gotags configuration
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" Todo:
" Set up buffer key mappings: http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" Configure Airline status / tabline: https://github.com/bling/vim-airline
"


"
" Useful leader key mappings
" map <leader>n :new<cr>
