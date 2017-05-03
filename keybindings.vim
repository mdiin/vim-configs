" new leaders
" default is good: \
let g:paredit_leader = '§'
" let g:mapleader = ','

" Meta-combinations that should treat Meta as escape
inoremap <M-h> <Esc>h
inoremap <M-j> <Esc>j
inoremap <M-k> <Esc>k
inoremap <M-l> <Esc>l
inoremap <M-o> <Esc>o
inoremap <M-O> <Esc>O
inoremap <M-:> <Esc>:
inoremap <M-,> <Esc>,
inoremap <M-;> <Esc>;
inoremap <M-A> <Esc>A
inoremap <M-I> <Esc>I
inoremap <M-u> <Esc>u
inoremap <M-p> <Esc>p

noremap <M-h> <Esc>h
noremap <M-j> <Esc>j
noremap <M-k> <Esc>k
noremap <M-l> <Esc>l
noremap <M-o> <Esc>o
noremap <M-O> <Esc>O
noremap <M-:> <Esc>:
noremap <M-,> <Esc>,
noremap <M-;> <Esc>;
noremap <M-a> <Esc>a
noremap <M-A> <Esc>A
noremap <M-I> <Esc>I
noremap <M-u> <Esc>u
noremap <M-p> <Esc>p

" Grepper bindings
nnoremap <leader>* :Grepper -tool ack -cword<cr>
nnoremap <leader>git :Grepper -tool git -noswitch<cr>
nnoremap ]c :cnext<cr>
nnoremap [c :cprev<cr>
nnoremap ]l :lnext<cr>
nnoremap [l :lprev<cr>
" nmap gs <plug>(GrepperOperator)
" xmap gs <plug>(GrepperOperator)

" normal mode bindings

" insert mode bindings
" visual mode bindings
" command-line mode bindings
" all modes bindings

" Rspec mode
map <unique> <silent> <Leader>a :RSpecAll<CR>
map <unique> <silent> <Leader>t :RSpecOne<CR>
map <unique> <silent> <Leader>T :MDual<CR>

" Unite bindings
map <unique> <silent> <Leader><space> :Unite -start-insert file_rec/neovim<CR>

" Clojure (fireplace) bindings
au BufNewFile,BufRead *.clj map <silent> gd :execute "Djump " . expand('<cword>')<CR>
au BufNewFile,BufRead *.clj map <silent> gD :execute "Dsplit " . expand('<cword>')<CR>

