"Beginning of the file"{{{
syntax on
filetype off
filetype plugin indent off
"}}}

"basic configurations"{{{

"fold
au FileType vim setlocal foldmethod=marker

"swap, backup, undo, info"{{{
set directory=~/.vim/swap
set swapfile
set backupdir=~/.vim/backup
set backup
set undodir=~/.vim/undo
set undofile
set viminfo+=n~/.vim/info/viminfo.txt
"}}}

"display"{{{
set number
set laststatus=2
set cmdheight=2
set showmatch
set helpheight=999
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set sidescroll=1
"}}}

"file"{{{
set fenc=utf-8
set confirm
set hidden
set autoread
"}}}

"search"{{{
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set gdefault
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"}}}

"system"{{{
set clipboard=unnamed,unnamedplus
set paste
set mouse=a
set shellslash
set iminsert=2
"}}}

"indent"{{{
set expandtab " must be set after 'set paste'
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
"}}}

"cmd"{{{
set wildmenu wildmode=list:longest,full
set history=10000
"}}}

"beep"{{{
set visualbell t_vb=
set noerrorbells
"}}}

"}}}basic configurations

"plugin configurations"{{{

"NerdTree"{{{
map <C-n> :NERDTreeToggle<CR>
"}}}

"PSC-IDE"{{{
helptags ~/volt/repos/github.com/frigoeu/psc-ide-vim/doc
let g:psc_ide_syntastic_mode = 1
"}}}

"}}}plugin configurations

"End of the file"{{{
filetype on
filetype plugin indent on
"}}}
