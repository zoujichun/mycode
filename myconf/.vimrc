"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set backspace
set backspace=eol,start,indent

" Turn backup on
set nobackup

" Set fileencodings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk

" Set non-linewise display
set display=lastline

" Disable VI compatible mode
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set colorscheme
" colorscheme desert
colorscheme default

" Enable syntax highlight
syntax on
let tlist_txt_settings = 'txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufNewFile,BufRead *.t2t set ft=txt2tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show ruler
set ruler

" Turn on WiLd menu
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show matching bracets
set showmatch

" Highlight search things
set hlsearch

" Ignore case when searching
set ignorecase
set smartcase

" Incremental match when searching
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Auto indent
set autoindent

" Smart indet
set smartindent

" C-style indeting
set cindent

" Set tabstop width
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

" Set <BS> delete fake tabs
set smarttab

" Insert spaces instead of real tabs
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sort by name
let Tlist_Sort_Type = "name"

" Use right window
let Tlist_Use_Right_Window = 1

" Set compart format
let Tlist_Compart_Format = 1

" Set exist by window
let Tlist_Exist_OnlyWindow = 1

" Disable auto close
let Tlist_File_Fold_Auto_Close = 0

" Disable fold column
let Tlist_Enable_Fold_Column = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Super paste
"inoremap <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

" Paste toggle
set pastetoggle=<F3>

" C's compile and run
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!gcc -Wall -g % -o %<"
  exec "! ./%<"
endfunc

" C++'s compile and run
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
  exec "w"
  exec "!g++ -Wall -g % -o %<"
  exec "! ./%<"
endfunc

" Open current directory
map <F4> :e .<CR>

" Use <space> to toggle fold
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" Set Up and Down non-linewise
noremap <Up> gk
noremap <Down> gj

autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
let g:pydiction_menu_height = 20 

" sdcv 取词翻译
nmap <C-\> : !/home/razone/bin/sdcv.sh <C-R>=expand("<cword>")<CR><CR>
