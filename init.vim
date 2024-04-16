set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop
set mouse=a
set scrolloff=8

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
