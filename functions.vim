function! SendFileToSlime(path)
  let result = "SlimeSend1 load \"" . a:path . "\";"
  return result
endfunction
autocmd BufWritePost *.rb execute SendFileToSlime(@%)

function! RSpec()
  SlimeSend1 require "rspec/core"
endfunction

function! TestFile(path)
  let path_arr = split(a:path, '/')
  let path_arr[0] = "spec"
  let path_arr[-1] = substitute(path_arr[-1], '.rb', '_spec.rb', 'g')
  return "SlimeSend1 RSpec::Core::Runner.run([\"" . join(path_arr, '/') . "\"])"
endfunction

function! TestAll()
  SlimeSend1 RSpec::Core::Runner.run(["spec"])
endfunction

command RSpec :call RSpec()
command RSpecOne :execute TestFile(@%)
command RSpecAll :call TestAll()

function! DualFile(path)
  let path_arr = split(a:path, '/')
  if path_arr[0] == "app"
    let path_arr[0] = "spec"
    let path_arr[-1] = substitute(path_arr[-1], '.rb', '_spec.rb', 'g')
  elseif path_arr[0] == "spec"
    let path_arr[0] = "app"
    let path_arr[-1] = substitute(path_arr[-1], '_spec.rb', '.rb', 'g')
  endif

  return join(path_arr, '/')
endfunction

function! OpenDual()
  return ":e " . DualFile(@%)
endfunction
command MDual :execute OpenDual()

