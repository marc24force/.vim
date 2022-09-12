" -----------------------key mapping========================
"Tab navegation
no <S-Tab> :bprevious <CR>
no <Tab> :bnext <CR>
"Nomes funciona amb la pos inicial al buffer
"no <M-1> :b1<cr>
"no <M-2> :b2<cr>
"no <M-3> :b3<cr>
"no <M-4> :b4<cr>
"no <M-5> :b5<cr>
"no <M-6> :b6<cr>
"no <M-7> :b7<cr>
"no <M-8> :b8<cr>
"no <M-9> :b9<cr>

"es com un bd, pk el buflistd mai es 1
"with Q close file not vim until last file
"nnoremap <expr> Q len(getbufinfo({'buflistd':1})) > 1 ? ':bd<cr>':':q<cr>'
"use Alt+p to togle paste mode
function InvPaste()
    set invpaste
    set paste?
endfunction 
noremap <Leader>p :call InvPaste()<cr>

"use Alt-o Alt-O to add new line no text
noremap <Leader>o o<ESC>
noremap <Leader>O O<ESC>

"use Alt-hjkl to move in insert mode
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

"To open a file under cursor

function OpenUnderCursor()
   try
      :e <cfile>
    catch /.*/
     try
      :YcmCompleter GoTo
     catch /.*/
    endtry 
   endtry
endfunction
nnoremap <C-o> :call OpenUnderCursor()<cr>

"open terminat
nnoremap <silent> <Leader> :ter ++rows=8<cr>


"YCM commands
"open documentation
nnoremap <C-h> :YcmCompleter GetDoc<cr> 
"fix simple syntactic error
nnoremap <C-f> :YcmCompleter FixIt<cr> 


