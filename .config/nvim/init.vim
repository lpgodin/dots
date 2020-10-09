autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

set number relativenumber

" Assigns CTRL + n to open/ close NERDTREE
map <C-n> :NERDTreeToggle<CR>

let g:rainbow_active=1
" specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/autoload/plug.vim')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

if has('win32') || has('win64')
  Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
else
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif

Plug 'zxqfl/tabnine-vim'

Plug 'morhetz/gruvbox'

Plug 'dracula/vim', { 'as': 'dracula' } 

Plug 'vim-scripts/Rainbow-Parenthesis'

" Initialize plugin system
call plug#end()
colorscheme dracula

set termguicolors
