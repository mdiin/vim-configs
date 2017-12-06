execute pathogen#infect()
syntax on
filetype plugin indent on

" Watch changes to this file
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
  au BufWritePost keybindings.vim so ~/.vim/keybindings.vim
augroup END

" Auto-remove trailing whitespace from code files
autocmd FileType clojure,javascript,html,xml,fish,ruby autocmd BufWritePre <buffer> %s/\s\+$//e

" Highlight comments across files
colorscheme solarized
set background=dark
highlight Comment ctermfg=1* cterm=bold

" Extra file types
augroup myvimrc_filetypes
  au BufNewFile,BufRead *.cljx setlocal ft=clojure
  au BufNewFile,BufRead *.cljc setlocal ft=clojure
  au BufNewFile,BufRead *.boot setlocal ft=clojure
  au BufNewFile,BufRead *.md setlocal ft=markdown
  au BufNewFile,BufRead *fish_funced* setlocal ft=fish
augroup END

set expandtab
set tabstop=2
set shiftwidth=2

" Slime config
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" Show line numbers
set number

" Show a column marking the 80th character
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=0
endif

" Grepper
let g:grepper = {
  \ 'tools': ['git', 'ag', 'grep'],
  \ 'open':  1,
  \ 'jump':  0,
  \ }

" Unite
try
  let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '-g', '']
  let g:unite_source_rec_min_cache_files = 1200
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

" UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" NERDCommenter
let g:NERDSpaceDelims = 1

" Colorizer
let g:colorizer_auto_filetype = 'css,html,json,javascript'

" Neovim specific
if has('nvim')
  set inccommand=split
endif

" Keybindings
source ~/.vim/keybindings.vim

" Custom functions
source ~/.vim/functions.vim

