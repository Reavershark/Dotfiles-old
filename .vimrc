"vim-latexsuite
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
autocmd Filetype tex setlocal nofoldenable
let g:Tex_ViewRule_pdf = 'evince'
:set cmdheight=2

"Enable forward searches
:let g:Tex_DefaultTargetFormat = 'pdf'

"Live latex
let g:livepreview_previewer = 'evince'
set updatetime=1000

"Line numbers
set number relativenumber

"Mouse
set mouse=a

"Clipboard
set clipboard=unnamedplus

"IgNoRe CaSe
set ic!

"wrap
set breakindent
set linebreak

"Smart command tab
set nocompatible
set wildmenu
set wildmode=full

"4 spaces tabs
set expandtab
set ts=4
set sw=4

"NerdTree binding
map <C-n> :NERDTreeToggle<CR>

"RGB
"colors monokai
syntax enable
hi Normal ctermbg=NONE

"VimPlug
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'scrooloose/nerdtree'
Plug 'dylanaraps/wal.vim'
call plug#end()
