" Generic ---- {{{
:colorscheme nord
:set number relativenumber
:set confirm
:set linebreak "if linebreak, don't split words (TODO check textwidth)
:set showcmd
:set hidden
:set tags=./tags,tags;

" }}}

" Plugin settings {{{5
" VIMTEX {{{6
"latex viewer okular
:let g:vimtex_view_general_viewer = 'okular'
" }}}

" Airline {{{6
"airline arrow
:let g:airline_powerline_fonts = 1
" }}}
" }}}

" Load FileType {{{5
autocmd FileType * 
            \ let filePath='~/.vim/types.d/' .&filetype.'.vim' |
            \ if filereadable(expand(filePath)) |
            \    execute 'source '.filePath |
            \ endif
" }}}

" FIXME color/filetype {{{5
"autocmd BufEnter * call FiletypeSource()

function! FiletypeSource()
    if index(['vim'], &filetype) != -1
"        :colorscheme 256_noir
    elseif index(['c','cpp'], &filetype) != -1
"        :colorscheme nord
    endif
endfunction
"}}}

":setlocal autoread

" :set spell spelllang=en_us
":set softtabstop=4
":set tabstop=4
":set expandtab
":set shiftwidth=4

":set autoindent
":set copyindent
"
":set listchars=tab:>-
"
"
":set cmdheight=1


"autoclose youcompleteme
":let g:ycm_autoclose_preview_window_after_completion=1
"dont highlight sintax
":let g:ycm_show_diagnostics_ui = 0


"word count
"let g:word_count=wordcount().words
"function WordCount()
"    if has_key(wordcount(),'visual_words')
"        let g:word_count=wordcount().words " count selected words
"    else
"        let g:word_count=wordcount().words " or shows words 'so far'
"    endif
"    return g:word_count
"endfunction
"set statusline+=\ #words:%{WordCount()}
"set laststatus=2 " show the statusline
