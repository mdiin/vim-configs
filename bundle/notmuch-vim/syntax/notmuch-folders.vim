" notmuch folders mode syntax file

syntax region nmFoldersCount     start='^' end='\%10v'
syntax region nmFoldersName      start='\%11v' end='  ('me=e-1
if exists("g:notmuch_folders_display_unread_count")
    if g:notmuch_folders_display_unread_count == 1
        syntax region nmFoldersCount     start='^' end='\%16v'
        syntax region nmFoldersName      start='\%17v' end='  ('me=e-1
    endif
endif
syntax match  nmFoldersSearch    /([^()]\+)$/

highlight link nmFoldersCount     Statement
highlight link nmFoldersName      Type
highlight link nmFoldersSearch    String

highlight CursorLine term=reverse cterm=reverse gui=reverse

