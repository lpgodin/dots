" How I Like Neovim at the moment

" Plugin management 
call plug#begin('~/.config/nvim/autoload/plug.vim')
" Note Taking Plugins
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

" Editing Plugins
Plug 'zxqfl/tabnine-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'preservim/nerdtree'
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'dense-analysis/ale'
" Plug 'majutsushi/tagbar'

" Visual/ Theming Plugins
" Plug 'overcache/NeoSolarized'
" Plug 'morhetz/gruvbox'
" Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Rainbow-Parenthesis'
Plug 'junegunn/goyo.vim'
" Initialize plugin system
call plug#end()

" KEYMAPPING
" Assigns CTRL + n to open/ close NERDTREE
map <C-n> :NERDTreeToggle<CR>
"Ctrl-b to open Tagbar
map <C-b> :TagbarToggle<CR>
" Assigns CTRL + g to open/ close Goyo
map <C-g> :Goyo<CR>

" Java compilation
autocmd FileType java set makeprg=javac\ % " Sets javac as compiler for java
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C.%# " Sets error format for compilation errors

" JavaComplete + java filetype complete config
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType java JCEnable

" Maps F5 to compile current file
autocmd Filetype java map <F5> :!javac<space>%<enter> 
" Maps F6 to run current file
autocmd Filetype java map <F6> :!java<space>%<enter> 

" Assigns F5 to convert .rmd files to document
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%', output_dir = '$FINISHED')"<space>\|<space>R<space>--vanilla<enter>

" NERDTree config
" Opens NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

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

" Neovim settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
let g:rainbow_active=1
set number relativenumber
syntax enable
set termguicolors " Truecolor <3
set background=dark
colorscheme onedark
let g:airline_theme='onedark'

" Job's done
