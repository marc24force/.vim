"Specify directory for plugins



"avoid using standard vim names like plugin
call plug#begin('~/.vim/my_plugin') 
" Plug + plugin name
Plug 'scrooloose/nerdtree'                               "open directory tree to browse files
Plug 'ap/vim-buftabline'                                 "show buffers as tabs
Plug 'Townk/vim-autoclose'                               "automatically closes ( or [ etc...
Plug 'kien/ctrlp.vim'                                    "with ctrl+p open file search
Plug 'tpope/vim-fugitive'                                "git with vim
"Plug 'Valloric/YouCompleteMe'                            "autocomplete
Plug 'godlygeek/tabular'                                 "tabulate elements with :Tab /elm for example :Tab /= 
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}      "multiple cursors
Plug 'suoto/hdlcc'                                       "vhdl support
Plug 'lervag/vimtex'                                     "latex support
Plug 'vim-airline/vim-airline'                           "Status line
Plug 'rafi/awesome-vim-colorschemes'                     "Colorschemes

" All of your Plugins must be added before the following line
call plug#end()            " required

" Brief help
" :PlugStatus       - lists configured plugins
" :PlugInstall      - installs plugins; append `!` to update or just:PlugUpdate
" :PlugUpgrade      - Upgrade vim-plug itself
" :PlugClean        - confirms removal of unused plugins; append `!` to auto-approve removal

