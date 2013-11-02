"-------------------------------
"   bsnux configuration for Vim
"-------------------------------

" Basic configuration
set nu
set nobackup
syntax on

" No swap files
set noswapfile

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" F2 for saving buffer
imap <F2> <Esc>:w<CR>i
nmap <F2> :w<CR>

" Remapping 'leader' key
let mapleader=","

" Lusty-explorer requires this
set hidden

" Activating ftplugins
filetype plugin on

" Auto reload file if it changes
set autoread

" For 'pathongen' plugin
call pathogen#infect()

" F3 for :tabnew
map <F3> :tabnew




imap <C-v> <Esc>"+gP
vmap <C-x> "+x
vmap <C-y> "+y



" Calling to 'git status' through 'fugitive' plugin
map <F8> :Gstatus<CR>

" Mapping Ctrl-Space to call to FufFile command (FuzzyFinder)
" vim & gvim compatibility
map <c-Space> :FufCoverageFile<CR>
map <C-@> :FufCoverageFile<CR>

" Save file as 'root'
" Make sure Defaults requiretty is not set in your sudoers file
command W w !sudo tee %

" Run PEP8
let g:pep8_map='<F6>'

" Run jslint
map <F9> :make %<CR> :cw<CR>

" Display Task list (TODO, FIXME, XXX) using ,v
map <leader>v <Plug>TaskList
" Task list on bottom
let g:tlWindowPosition=1

" Folding
set foldmethod=indent
set foldlevel=99

" Django snippets for Python and HTML files
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Configuring CloseTag plugin
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" Moving lines up & down quickly
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Status line
set statusline=%F\ [l=%L]\ [%p%%]\ [p=%03l,%03v]\ [b=%n]\ %{fugitive#statusline()}
set laststatus=2
