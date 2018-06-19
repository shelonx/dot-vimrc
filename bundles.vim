set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
"Bundle 'mattn/emmet-vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'

"------ snippets ------
"Bundle 'garbas/vim-snipmate'
"Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'edsono/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
"Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'sjl/gundo.vim'
"Bundle 'godlygeek/tabular'
"Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'                            "目录树
"Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'                              "函数列表
Bundle 'mileszs/ack.vim'                                "快速查找
"Bundle 'kien/ctrlp.vim'
Bundle 'ctrlpvim/ctrlp.vim'                             "快速打开文件
"Bundle 'tpope/vim-fugitive'                            "git支持
Bundle 'Lokaltog/vim-powerline'                         "状态栏增强
"Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'                "高亮末尾空格
Bundle 'vim-scripts/a.vim'                              ".h和.c文件快速切换
"Bundle 'vim-scripts/OmniCppComplete'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
"Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'lepture/vim-jinja'
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
"Bundle 'othree/html5.vim'
"Bundle 'tpope/vim-haml'
"Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
" Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Go ----------
"Bundle 'fatih/vim-go'

"------- FPs ------
" Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
"Bundle 'rickharris/vim-blackboard'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'rickharris/vim-monokai'
Bundle 'shelonx/vim-vividchalk'
"Bundle 'Lokaltog/vim-distinguished'
"Bundle 'chriskempson/vim-tomorrow-theme'
"Bundle 'fisadev/fisa-vim-colorscheme'
"Bundle 'tomasr/molokai'

"failetype plugin indent on     " required!
