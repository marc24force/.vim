setlocal autoindent
setlocal copyindent

setlocal nowrap

setlocal foldmethod=syntax
setlocal nofoldenable

setlocal shiftwidth=4 smarttab
setlocal expandtab
setlocal tabstop=8 softtabstop=0

" gf work in $(env)
setlocal isfname+=(,)
setlocal includeexpr=substitute(v:fname,'\\$(\\(.\\{-}\\))','\\=getenv(submatch(1))','g')
