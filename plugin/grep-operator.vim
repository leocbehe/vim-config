" Operator for grep functionality inside Vim

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
   let unnamed_reg = @@

   if a:type ==# 'v'
      execute "normal! `<v`>y"
   elseif a:type ==# 'char'
      execute "normal! `[v`]y"
   else
      return
   endif

   silent execute "grep! -R " . shellescape(@@) . " ."
   copen | normal 

   let @@ = unnamed_reg 
endfunction
