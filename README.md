# My VIM Configuration

### Terminal fix

In some cases, due to compatibility issues with the terminal, vim starts in REPLACE mode messing with your file.
Add this in your .vimrc to fix that.

```vim
if &term =~? 'xterm'
    let s:myterm = 'xterm'
else
    let s:myterm =  &term
endif
let s:myterm = substitute(s:myterm, 'cons[0-9][0-9].*$',  'linux', '')
let s:myterm = substitute(s:myterm, 'vt1[0-9][0-9].*$',   'vt100', '')
let s:myterm = substitute(s:myterm, 'vt2[0-9][0-9].*$',   'vt220', '')
let s:myterm = substitute(s:myterm, '\\([^-]*\\)[_-].*$', '\\1',   '')

if s:myterm ==? 'xterm' || s:myterm ==? 'kvt' || s:myterm ==? 'gnome'
    map <ESC>On  .
endif
```
