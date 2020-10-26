" How I Like Neovim at the moment

" Plugin management
call plug#begin('~/.config/nvim/autoload/plug.vim')

" Note Taking Plugins
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

" Editing Plugins
Plug 'zxqfl/tabnine-vim'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdtree'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'

" Visual/ Theming Plugins
Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Rainbow-Parenthesis'
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

" Deoplete config
let g:deoplete#auto_complete_start_length = 2

" Use smartcase
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}

" NERDTree config
" Opens NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
" Assigns CTRL + n to open/ close NERDTREE
map <C-n> :NERDTreeToggle<CR>

" JavaComplete + java filetype complete config
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java JCEnable

" Ale for code checking
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'

" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0

" Setup compilers for languages
let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }

"Ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" Since we are already using Deoplete, and using tab with both doesn't work nice use <c-j> instead
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

"Ctrl-b to open Tagbar
map <C-b> :TagbarToggle<CR>

" Java compilation
autocmd FileType java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C.%#

" Assigns CTRL + g to open/ close Goyo
map <C-g> :Goyo<CR>

" Assigns F5 to convert .rmd files to document
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

let g:gruvbox_contrast_dark = 'hard'

" Neovim settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
let g:rainbow_active=1
set number relativenumber
syntax enable
set background=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'
" Truecolor <3
set termguicolors
