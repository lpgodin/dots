" How I Like Neovim at the moment

" Extra Keymappings
" Assigns CTRL + n to open/ close NERDTREE
map <C-n> :CHADopen<CR>
" Assigns CTRL + g to open/ close Goyo
map <C-g> :Goyo<CR>
" Assigns F5 to convert .rmd files to document
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" Plugin management
call plug#begin('~/.config/nvim/autoload/plug.vim')

" Editing plugs
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'zxqfl/tabnine-vim'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

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

" Neovim settings
let g:rainbow_active=1
set number relativenumber
syntax enable
colorscheme gruvbox
let g:airline_theme='gruvbox'
" Truecolor <3
set termguicolors
