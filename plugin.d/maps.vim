" Generic key mapping {{{
"Tab navegation
no <S-Tab> :bprevious <CR>
no <Tab> :bnext <CR>
"TODO go to specific buffer

"Buffer delete others
command Bod %bd|e#|bd#

"Swap paste mode with Leader p
noremap <Leader>p :set invpaste<cr>

"use Leader-o Leader-O to add new line no text
noremap <Leader>o @="o<C-v><Esc>x"<cr>
noremap <Leader>O @="O<C-v><Esc>x"<cr>

"use Leader-j/k to add new line (below/above)
nnoremap <silent> <leader>j :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>k :<C-u>call append(line(".")-1,   repeat([""], v:count1))<CR>

"open terminal
nnoremap <silent> <Leader>t :ter ++rows=10<cr> "Open small terminal horizontal
nnoremap <silent> <Leader>T :rightbe vert ter<cr> "Open large terminal vertical (on the right)

"reload filetype
noremap <leader>r :filetype detect<CR>
"source $MYVIMRC
map <leader>s :so $MYVIMRC<cr>
" }}}

" Plugin mappings {{{5
" NERDTree {{{6
nnoremap <leader>n :NERDTreeFind<CR> " Focus the NERDTree window
nnoremap <C-n> :NERDTreeToggle<CR>    " Open/Close NERDTree
" }}}
" BClose {{{6
noremap <Leader>q :Bd<cr>
" }}}
" }}}


"YCM commands
"open documentation
"oremap <C-h> :YcmCompleter GetDoc<cr> 
"fix simple syntactic error
"nnoremap <C-f> :YcmCompleter FixIt<cr> 

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
"nnoremap <C-o> :call OpenUnderCursor()<cr>

