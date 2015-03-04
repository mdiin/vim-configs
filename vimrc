execute pathogen#infect()
syntax on
filetype plugin indent on
set foldcolumn=3
set foldmethod=syntax

" Watch changes to this file
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  au BufWritePost keybindings.vim so ~/.vim/keybindings.vim
augroup END

" Highlight comments across files
colorscheme default
highlight Comment ctermfg=red ctermbg=gray

" Extra file types
au BufNewFile,BufRead *.cljx setlocal ft=clojure
au BufNewFile,BufRead *.md setlocal ft=markdown

set expandtab
set tabstop=2
set shiftwidth=2

au BufNewFile,BufRead *.js setlocal tabstop=4 shiftwidth=4

" Slime config
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" Commands
command JSONFormat :%!python -m json.tool

" Keybindings
source ~/.vim/keybindings.vim

" Custom functions
source ~/.vim/functions.vim

