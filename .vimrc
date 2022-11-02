syntax on
set autoindent
set number
set nocompatible
set hidden " Allows switching buffers
filetype plugin indent on
set tabstop=4
set shiftwidth=4

let mapleader = " "
let maplocalleader = "\\"

" Search results are vertically centered
set scrolloff=999

" Loading colorscheme from vimrc slows neovimrc
" so skip it if it is being sourced by neovim
if !has("nvim")
	colorscheme monokai
endif

nnoremap ZS :w<CR>

" Easy navigation between buffers
nnoremap <silent> <leader>n :bnext <CR>
nnoremap <silent> <leader>p :bprevious <CR>
nnoremap <silent> <leader>d :bdelete <CR>
" Ask for confirmation before deleting buffer
nnoremap <leader>D :bdelete!
nnoremap <leader>b :buffers<CR>:buffer<Space>

" Turn of highlighted search results
nnoremap <silent> <leader>h :noh<CR>

" Open vimrc quickly
command! Vimrc :edit ~/.vimrc
command! Bashrc :edit ~/.bash_profile

" " Highlight trailing white space
" highlight ExtraWhitespace ctermbg=darkred guibg=darkgreen
" " Pattern matches trailing whitespace typing at the end of a line
" match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" " Shortcut for removing trailing whitespaces
" nnoremap <F5> :%s/\s\+$//e<CR>

" Avoid common Shift combinations
command! -bar -bang Q q<bang>
command! -bar -bang W w<bang>
command! -bar -bang WQ wq<bang>
command! -bar -bang Wq wq<bang>

" Fix behavior for navigation in wrapped lines wihtout
" messing up commands like d10j
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Moving lines
nnoremap <silent> <M-j> :m .+1<CR>==
nnoremap <silent> <M-k> :m .-2<CR>==
inoremap <silent> <M-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <M-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <M-k> :m '<-2<CR>gv=gv
vnoremap <silent> <M-j> :m '>+1<CR>gv=gv

" Fixing >> and <<
xnoremap > >gv
xnoremap < <gv
