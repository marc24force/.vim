" ----------------------Starting Config======================
"colorscheme
:colorscheme nord
:set number
:set relativenumber
":set ruler
:set confirm
:set linebreak
" :set spell spelllang=en_us
:set softtabstop=4
:set tabstop=4
:set expandtab
:set shiftwidth=4

:set encoding=utf-8
:set autoindent
:set copyindent

:set listchars=tab:>-

:set showcmd

:set hidden
:set cmdheight=1


function! g:FileTypeConf()
    if &filetype == 'txt' || &filetype == 'tex'
        set spell
        set wrap
    else
        set nospell
        set nowrap
    endif
endfunction

":au BufEnter * :call g:FileTypeConf()

"autoclose youcompleteme
":let g:ycm_autoclose_preview_window_after_completion=1
"dont highlight sintax
":let g:ycm_show_diagnostics_ui = 0

"latex viewer okular
:let g:vimtex_view_general_viewer = 'okular'

"airline arrow
:let g:airline_powerline_fonts = 1

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
