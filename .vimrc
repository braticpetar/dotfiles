" enter the current millenium
set nocompatible

" enable syntax and plugins
syntax on
filetype plugin on 

" ##############################
" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" Use :b to jump to any open file from the buffer

" ##############################
" TAG JUMPING:

" Create the 'tags' file (may need to install ctrags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" ##############################
" AUTOCOMPLETE:
"  The good stuff is documented in |ins-completion|
"
"  HIGHLIGHTS:
"  - ^x^n for Just this file
"  - ^x^f for filenames (works with our path trick)
"  - ^x^] for tags only
"  - ^n for anythings specified by the 'complete' option
"
"  NOW WE CAN:
"  - Use ^n and ^p to go back and forth in the suggestion list
"
" ##############################
" FILE BROWSING:
"
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"
" ##############################
" SNIPPETS:
" 
" Read an empty template file and move cursor
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" ##############################
" BASIC SETTINGS:
"
set number	      " Sets the line numbers
set autoindent
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab	    " Converts tabs to spaces
set wrap
set encoding=utf-8
set hlsearch      " highlight searches
set t_Co=256
colorscheme industry 
set wildmenu

" ##############################
" ABBREVATIONS:
"
iabbrev prf printf("");<Left>
iabbrev scanf scanf("");<Left><Left><Left>
inoremap prf printf("");<Left><Left><Left>
inoremap scf scanf("");<Left><Left><Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap {<Tab> {}<Left><Enter><Enter><Up><Tab>
iabbrev ( ()<Left>
iabbrev [ []<Left>
iabbrev { {}<Left><Enter><Enter><Up><Tab>
