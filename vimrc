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
colorscheme solarized
set background=dark
highlight Comment ctermfg=1* ctermbg=0 cterm=bold

" Extra file types
au BufNewFile,BufRead *.cljx setlocal ft=clojure
au BufNewFile,BufRead *.cljc setlocal ft=clojure
au BufNewFile,BufRead *.md setlocal ft=markdown
au BufNewFile,BufRead *fish_funced* setlocal ft=fish

set expandtab
set tabstop=2
set shiftwidth=2

au BufNewFile,BufRead *.js setlocal tabstop=2 shiftwidth=2

" Slime config
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

" Commands
command JSONFormat :%!python -m json.tool

" cljfmt configuration
let g:clj_fmt_autosave = 0 " Do not autoformat when saving...

" airline
let g:airline_powerline_fonts = 0

if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=0
endif

" Grepper
let g:grepper = {
  \ 'tools': ['ag', 'git', 'grep'],
  \ 'open':  0,
  \ 'jump':  1,
  \ }

" Unite
try
  let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '-g', '']
  let g:unite_source_rec_min_cache_files = 1200
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry

" Syntastic: General
" These options are recommended for new users:
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_shell = "/bin/bash"

" Syntastic: Javascript
let g:syntastic_javascript_checkers = ["standard"]
let g:syntastic_javascript_standard_exec = "./node_modules/.bin/standard"

" UltiSnips
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Keybindings
source ~/.vim/keybindings.vim

" Custom functions
source ~/.vim/functions.vim

