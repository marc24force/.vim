call plug#begin('~/.vim/plugin.d') 

" ------------- ACTIVE PLUGIN LIST ----------------- 
" Plug + plugin name
Plug 'preservim/nerdtree'                               "open directory tree to browse files
Plug 'Xuyuanp/nerdtree-git-plugin'                      "Shows Git status flags for files and folders in NERDTree.
Plug 'PhilRunninger/nerdtree-visual-selection'          "Visual selection in NERDTree
Plug 'ap/vim-buftabline'                                "show buffers as tabs
Plug 'suoto/hdlcc'                                      "vhdl support
Plug 'lervag/vimtex'                                    "latex support
Plug 'vim-airline/vim-airline'                          "Status line
Plug 'rafi/awesome-vim-colorschemes'                    "Colorschemes
Plug 'mikesmithgh/ugbi'                                 "User getting bored
Plug 'tpope/vim-fugitive'                               "git with vim
Plug 'godlygeek/tabular'                                "tabulate elements with :Tab /elm for example :Tab /= 
Plug 'preservim/vim-markdown'                           "Markdown support
Plug 'moll/vim-bbye'                                    "Don't close window when deleting buffer

" ------------- REMOVED PLUGIN -----------------
"Plug 'Townk/vim-autoclose'                               "automatically closes ( or [ etc...
"Plug 'kien/ctrlp.vim'                                    "with ctrl+p open file search
"Plug 'Valloric/YouCompleteMe'                            "autocomplete
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}      "multiple cursors

call plug#end()            " required

" Load plugin specific configuration
source ~/.vim/plugin.d/config.vim

" HELP
" Brief help
" :PlugStatus       - lists configured plugins
" :PlugInstall      - installs plugins; append `!` to update or just:PlugUpdate
" :PlugUpgrade      - Upgrade vim-plug itself
" :PlugClean        - confirms removal of unused plugins; append `!` to auto-approve removal
