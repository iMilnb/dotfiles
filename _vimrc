set nocompatible " be iMproved, required for Vundle
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'fatih/vim-go'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent off
filetype plugin on

" end of Vundle configuration

set ts=8
set noai
set ruler
set tw=80
set formatoptions+=t
syntax on
set backspace=2
set background=dark
let g:molokai_original=1
set t_Co=256
colorscheme molokai-trans

au BufRead,BufNewFile pico.* setfiletype text
au BufRead,BufNewFile *.sls setfiletype yaml
au BufRead,BufNewFile *.md,*.markdown setlocal filetype=markdown

au FileType c colorscheme molokai
au FileType python set ts=4 expandtab
au FileType yaml set ts=2 expandtab
au FileType markdown set tw=0
au FileType go set ts=4
au FileType dockerfile set ts=4 expandtab
au FileType yaml set ts=2 expandtab
au FileType html set ts=2 expandtab nowrap

set list listchars=tab:»\ 

" fucks up mouse copy/paste
"set colorcolumn=80
"highlight ColorColumn ctermbg=8

if has("gui_running")
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 10.5
	set lines=50
	set columns=100
	set go-=T
	set go-=L
	set go+=r
	set colorcolumn=80
endif

" inside screen / tmux
if match($TERM, "screen")!=-1
	map <Esc>[C <C-Right>
	map <Esc>[D <C-Left>
	map! <Esc>[C <C-Right>
	map! <Esc>[D <C-Left>
else
" no screen
	map <Esc>[1;5D <C-Left>
	map <Esc>[1;5C <C-Right>
	map! <Esc>[1;5D <C-Left>
	map! <Esc>[1;5C <C-Right>
endif

nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <C-left> :tabprevious<CR>
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-w> <Esc>:tabclose<CR>
inoremap <C-right> <Esc>:tabnext<CR>
inoremap <C-left> <Esc>:tabprevious<CR>

nmap <C-s> :set spell spelllang=

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

set guicursor=a:blinkon0
let g:pep8_map='<C-P>'

set laststatus=2
let g:airline_theme='serene'
let g:airline_powerline_fonts=1
set encoding=utf-8

let $PATH .= ':/home/imil/.local/bin'
let $GOPATH = '/home/imil/pkg/go'

"let vim_markdown_preview_pandoc=1
let vim_markdown_preview_github=1

let g:go_def_mapping_enabled=0
