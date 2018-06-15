source ~/.vim/bundles.vim

"------ encoding dectection ------
set fileencodings=utf-8
",gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"------ enable filetype dectection and ft specific plugin/indent ------
filetype plugin indent on
"filetype plugin on

"------ enable syntax hightlight and completion ------
syntax on

"------ color scheme ------
"set background=dark
color vividchalk
let g:rehash256 = 1
let g:molokai_original = 1
set cc=100,120                                                          "高亮80列和100列

"------ highlight current line ------
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"------ search ------
"set incsearch
"set highlight 	" conflict with highlight current line
"set ignorecase
"set smartcase

"------ editor settings ------
"set history=1000
"set nofoldenable                                                  " disable folding
"set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
"set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed
"set nowrap                                                        " dont wrap lines
"set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
"set showmatch                                                     " show matching bracket (briefly jump)
"set showcmd                                                       " show typed command in status bar
"set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
"set matchtime=2                                                   " show matching bracket for 0.2 seconds
"set matchpairs+=<:>                                               " specially for html
"set relativenumber

"------ Default Indentation ------
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

"autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

"------ syntax support ------
"autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
"------ js ------
"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

"------ tabbar ------
"let g:Tb_MaxSize = 1
"let g:Tb_TabWrap = 1

"hi Tb_Normal guifg=white ctermfg=white
"hi Tb_Changed guifg=green ctermfg=green
"hi Tb_VisibleNormal ctermbg=252 ctermfg=235
"hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

"------ easy-motion ------
"let g:EasyMotion_leader_key = '<Leader>'

"------ Tagbar ------
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_left=0
let g:tagbar_width=40
"let g:tagbar_vertical = 10
let g:tagbar_autofocus=0
let g:tagbar_autoclose=1
let g:tagbar_sort=1                                                     "按首字母顺序排序
"let g:tagbar_compact=1
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "打开文件时自动打开tagbar

"------ tag for coffee -------
"if executable('coffeetags')
"  let g:tagbar_type_coffee = {
"        \ 'ctagsbin' : 'coffeetags',
"        \ 'ctagsargs' : '',
"        \ 'kinds' : [
"        \ 'f:functions',
"        \ 'o:object',
"        \ ],
"        \ 'sro' : ".",
"        \ 'kind2scope' : {
"        \ 'f' : 'object',
"        \ 'o' : 'object',
"        \ }
"        \ }

"  let g:tagbar_type_markdown = {
"   \ 'ctagstype' : 'markdown',
"    \ 'sort' : 0,
"    \ 'kinds' : [
"        \ 'h:sections'
"    \ ]
"    \ }
"endif

"------ Nerd Tree ------
let NERDChristmasTree=0
"let NERDTreeWinSize=30
"let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.o']
"let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0
"let NERDTreeDirArrows=0
let NERDTreeWinPos = "left"

" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"------ nerdcommenter ------
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

"------ ZenCoding ------
"let g:user_emmet_expandabbr_key='<C-j>'

"------ powerline ------
" PowerLine是一个增强的Vim状态栏插件。当Vim处于NORMAL、INSERT、BLOCK等状态时，状态栏会呈现不同的颜色，同时状态栏还会显示当前编辑文件的格式（uft-8等）、文件类型（java、xml等）和光标位置等
set nocompatible
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors
let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select = 1    "自动选择第一个
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 2
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"set completeopt-=preview

"imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
"smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
"imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
"smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

"------ Enable omni completion ------
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType c setlocal omnifunc=ccomplete#Complete
"if !exists('g:neocomplcache_omni_patterns')
"  let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

"------ SuperTab ------
" let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
"let g:SuperTabRetainCompletionType=2

"------ ctrlp ------
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"------ Keybindings for plugin toggle ------
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
nmap <F5> :NERDTreeToggle<cr>
nmap <F6> :TagbarToggle<cr>
"nmap <F3> :GundoToggle<cr>
"nmap <F4> :IndentGuidesToggle<cr>
"nmap  <D-/> :
"nnoremap <leader>a :Ack
"nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
" 映射在不同窗口间切换快捷键
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"------- When editing a file, always jump to the last cursor position -------
"------- 记住上次打开位置 ------
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

"------ w!! to sudo & write a file ------
"cmap w!! %!sudo tee >/dev/null %

"------ Quickly edit/reload the vimrc file ------
"nmap <silent> <leader>ev :e $MYVIMRC<CR>
"nmap <silent> <leader>sv :so $MYVIMRC<CR>

"------ sublime key bindings ------
"nmap <D-]> >>
"nmap <D-[> <<
"vmap <D-[> <gv
"vmap <D-]> >gv

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"------ eggcache vim ------
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" 自启动可视化缩进
"let g:indent_guides_enable_on_vim_startup=1
" 从第3层开始可视化显示缩进
"let g:indent_guides_start_level=3
" 色块宽度
"let g:indent_guides_guide_size=1

"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1
"let OmniCpp_MayCompleteDot = 1
"let OmniCpp_MayCompleteArrow = 1
"let OmniCpp_MayCompleteScope = 1
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest


" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

function AddFileTitle()
    call setline(1, "/*")
    call append(1, " * Description: ")
    call append(2, " *")
    call append(3, " * Author: ")
    call append(4, " *")
    call append(5, " * Date: ".strftime("%Y-%m-%d"))
    call append(6, " */")
    call append(7, "")
endfunction

function AddFuncComment()
    call setline(line("."), "/*")
    call append(line("."), " * @brief: ")
    call append(line(".") + 1, " *")
    call append(line(".") + 2, " * @param: ")
    call append(line(".") + 3, " *")
    call append(line(".") + 4, " * @return: ")
    call append(line(".") + 5, " */")
endfunction

nnoremap <leader>file :call AddFileTitle()<CR>
nnoremap <leader>func :call AddFuncComment()<CR>
nnoremap <leader><leader><SPACE> o<ESC>
nnoremap <leader><SPACE> i<SPACE><ESC>
nnoremap <leader>ch :A<CR>
nnoremap <leader>s :FixWhitespace<CR>
