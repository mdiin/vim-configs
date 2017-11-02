setlocal foldmethod=syntax

" Commands
command! JSONFormat :%!python -m json.tool
