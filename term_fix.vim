" Terminal fixes
"
" These originate from some linux distribution's system vimrc. I can't say
" that I understand the details what's going on here, but without these
" settings, I've had problems like vim starting in REPLACE mode for
" TERM=xterm-256color (neovim is fine)

if &term =~? 'xterm'
    let s:myterm = 'xterm'
else
    let s:myterm =  &term
endif
let s:myterm = substitute(s:myterm, 'cons[0-9][0-9].*$',  'linux', '')
let s:myterm = substitute(s:myterm, 'vt1[0-9][0-9].*$',   'vt100', '')
let s:myterm = substitute(s:myterm, 'vt2[0-9][0-9].*$',   'vt220', '')
let s:myterm = substitute(s:myterm, '\\([^-]*\\)[_-].*$', '\\1',   '')

" Here we define the keys of the NumLock in keyboard transmit mode of xterm
" which misses or hasn't activated Alt/NumLock Modifiers.  Often not defined
" within termcap/terminfo and we should map the character printed on the keys.
if s:myterm ==? 'xterm' || s:myterm ==? 'kvt' || s:myterm ==? 'gnome'
    map <ESC>On  .
endif

