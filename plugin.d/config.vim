" NERDTree ---- {{{5
let NERDTreeIgnore=['.netrwhist', '\~$', '\.swp$']
let NERDTreeShowHidden=1

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" NERDTreeGIT {{{6
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
"}}}

"}}}

" Markdow vim ---- {{{5
let g:vim_markdown_folding_disabled = 1
" }}}

" VIMTEX {{{5
"latex viewer okular
:let g:vimtex_view_general_viewer = 'okular'
" }}}

" Airline {{{5
"airline arrow
:let g:airline_powerline_fonts = 1
" }}}

" Ibis {{{5
" ibis mail configuration
source ~/.ibisconfig.vim
"}}}
