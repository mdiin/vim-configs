" new leaders
" default is good: \
let g:paredit_leader = '§'
let g:mapleader = '\'

" normal mode bindings
:nmap <silent> <Leader><C-n> :NERDTreeToggle <cr>

" insert mode bindings
" visual mode bindings
" command-line mode bindings
" all modes bindings

" Rspec mode
map <unique> <silent> <Leader>a :RSpecAll<CR>
map <unique> <silent> <Leader>t :RSpecOne<CR>
map <unique> <silent> <Leader>T :MDual<CR>

" Unite bindings
map <unique> <silent> <Leader>uf :Unite file<CR>
map <unique> <silent> <Leader>ub :Unite buffer<CR>
map <unique> <silent> <Leader>unf :Unite file/new<CR>

