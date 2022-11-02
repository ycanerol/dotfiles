" Load from .vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

colorscheme monokai

" Open nvimrc quickly
command! Nvimrc :edit $MYVIMRC
command! Tmux :edit ~/.tmux.conf

" Turn on live substitution preview (only Neovim)
set inccommand=nosplit

" Open vim-plug window above instead of to the side
let g:plug_window='leftabove new'

" Set the highlight duration for the plugin highlightedyank
let g:highlightedyank_highlight_duration = 1500

" Needed for jupyter-vim?
let g:python3_host_prog='/Users/ycan/anaconda/envs/pymer/bin/python'

" Automatically open browser window for markdown live preview
let g:mkdp_auto_start = 1

" Easier connection to Jupyter console
nnoremap <localleader>c :JupyterConnect<CR>
vnoremap <localleader>E :JupyterRunVisual<CR>

" Easy to strip the whitespace from vim-better-whitespace
nnoremap <F4> :ToggleWhitespace<CR>
nnoremap <F5> :StripWhitespace<CR>

" Easy access to fzf
nnoremap <leader>f :Files<CR>

" vim-plug stuff
call plug#begin()
Plug 'jupyter-vim/jupyter-vim', { 'for': 'python' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tweekmonster/startuptime.vim'
Plug 'machakann/vim-highlightedyank' " Requires extra setup in Vim
Plug 'ntpeters/vim-better-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
