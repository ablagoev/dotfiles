execute pathogen#infect()

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set background=light  " Assume light background

set backspace=indent,eol,start
set ml mls=5          " Force evaluation of modelines
set undodir=~/.vim/tmp  " where to put undo files
set undofile            " Keep undo history in a file
set mouse=a             " Mouse all the things
set directory=/tmp      " put .swp files in /tmp
set sw=2 ts=2 sts=2
set expandtab
set autoindent
set laststatus=2
set number
set scrolloff=3         " Always show three lines above cursor
set showmatch
set splitbelow splitright
set visualbell          " Get rid of visual bell
set foldenable          " Enable folds
set wildmode=list:longest
set hlsearch            " Enable search highlighting

" include syntax highlighting for golang

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" set spell spelllang=en_us

autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype php setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

" PHP documenter script bound to Control-L
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
autocmd FileType php nnoremap <C-l> :call pdv#DocumentWithSnip()<CR>

map <C-n> :NERDTreeToggle<CR>

" Disable arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
