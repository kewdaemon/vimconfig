set foldmethod=manual
set nocompatible 
set clipboard=unnamedplus 
set noswapfile
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set termguicolors
set lbr
set autoread
set tw=70
set autoindent "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines
syntax on
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch
set relativenumber
set number

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set cursorline
set linespace=3
 

"find files recursively
set path+=**

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" status bar 

set showcmd " <dd><12yy> like 




autocmd BufNewFile *.html 0r ~/.vim/skeleton/html.html
autocmd BufNewFile *.php 0r ~/.vim/skeleton/php.php
autocmd BufNewFile *.c 0r ~/.vim/skeleton/c.c
autocmd BufNewFile *.cpp 0r ~/.vim/skeleton/cpp.cpp
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d 


" built-in file manager
inoremap <C-e> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <C-e> <Esc>:Lex<cr>:vertical resize 30<cr>
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3
let g:netrw_banner=0 


" snippets 
nnoremap ,html :-1read ~/.vim/skeleton/html.html<CR>4jwf>a




colorscheme custom 

