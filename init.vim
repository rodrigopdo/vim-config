call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp' 
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
" Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'powerline/powerline'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme dracula
set background=dark
let g:airline_theme='violet'

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nmap <c-b> :NERDTreeToggle<CR>

" Shortcuts for split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <leader>h :bp<cr>
map <leader>l :bn<cr>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

syntax on            " Enable syntax highlight
set number               " Enable line numbers
set tabstop=2        " Show existing tab with 4 spaces width
set softtabstop=2    " Show existing tab with 4 spaces width
set shiftwidth=2     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any
"set relativenumber
set inccommand=split
set sidescroll=1
set cursorline
set completeopt=noinsert,menuone,noselect

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:ale_linters = { 'javascript': ['eslint'] }

"let g:coc_global_extensions = [ ]

"=========== AUTOCOMPLETE =================================================
"
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
    " found' messages
    set shortmess+=c

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
    inoremap <c-c> <ESC>

    " When the <Enter> key is pressed while the popup menu is visible, it only
    " hides the menu. Use this mapping to close the menu and also start a new
    " line.
    inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

    " Use <TAB> to select the popup menu:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

call ncm2#register_source({'name' : 'css',
            \ 'priority': 9, 
            \ 'subscope_enable': 1,
            \ 'scope': ['css', 'scss', 'less'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni',
            \               'csscomplete#CompleteCSS'],
            \ })

" ========= COMMENTER =================================
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert
map cs <Plug>NERDCommenterSexy

