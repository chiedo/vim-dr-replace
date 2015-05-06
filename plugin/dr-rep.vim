"Vim D Replace

" Converts Selected pixels to ems vice versa.
" - replace_with: Replace the word under the cursor with this
" - start_line: The first line to search.
" - end_line: The last line to search
function! VimDrReplace(replace_with,start_line, end_line)
  " Execute the command to search for the word under the cursor
  
  if exists(a:start_line)
    let start_line= "."
  else
    let start_line= a:start_line
  endif

  if exists(a:end_line)
      let end_line= "."
  else
    let end_line= a:end_line
  endif

  execute "normal! *"
  execute start_line . "," . end_line ."s//". a:replace_with."/g"
endfunction

"Available commands
command! -nargs=1 -range Dr call VimDrReplace(<f-args>,<line1>,<line2>)
command! -nargs=1 -range=% DrAll call VimDrReplace(<f-args>,<line1>,<line2>)
