" Initialize: "{{{
"---------------------------------------------------------------------------

" No 'vi' compatible commands.
set nocompatible


" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

" Use ',' instead of '\'.
" Use <Leader> in global plugin.
let g:mapleader = ','

" Set augroup.
augroup MyAutoCmd
  autocmd!
augroup END

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'unix' : 'make -f make_unix.mak',
\     'mac': 'make -f make_mac.mak'
\    },
\ }
NeoBundle 'Valloric/YouCompleteMe',
" \{'autoload': {'filetypes': ['javascript','python', 'scala', 'java']}}
NeoBundle 'SirVer/ultisnips'
NeoBundleLazy 'honza/vim-snippets',
\{'autoload': {'filetypes': ['javascript','python']}}
NeoBundle 'Shougo/unite.vim'
" NeoBundleLazy 'sgoranson/unite-mark',
" \{ 'depends': 'Shougo/unite.vim',
" \  'autoload': {'commands': ['Unite']}
" \}
" NeoBundle 'Shougo/neomru.vim', {'depends': 'Shougo/unite.vim'}
" NeoBundleLazy 'thinca/vim-ref', { 'autoload': { 'filetypes': ['python']} }
NeoBundle 'w0ng/vim-hybrid'
NeoBundleLazy 'bling/vim-airline',
\{'autoload': {'filetypes': ['javascript','python', 'scala', 'java']}}
NeoBundleLazy 'scrooloose/syntastic',
\{'autoload': {'filetypes': ['javascript','python']}}
NeoBundleLazy 'mattn/emmet-vim/',{
\ 'autoload' : {
\   'filetypes': ['html', 'htmldjango', 'xhtml']
\ }}
NeoBundleLazy 'tpope/vim-repeat',
\{'autoload': {'filetypes': ['javascript','python']}}
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-user'
NeoBundleLazy 'kana/vim-textobj-indent',
\{'autoload': {'filetypes': ['javascript','python']}}
" NeoBundleLazy 'mjbrownie/django-template-textobjects', {
" \ 'depends': 'kana/vim-textobj-user',
" \ 'autoload' : {
" \   'filetypes': ['html', 'htmldjango']
" \ }}
" NeoBundleLazy 'bps/vim-textobj-python', {
" \ 'depends': 'kana/vim-textobj-user',
" \ 'autoload' : {
" \   'filetypes': 'python'
" \ }}
NeoBundleLazy 'othree/html5.vim', {
\ 'autoload' : {
\   'filetypes': ['html','htmldjango']
\ }}
NeoBundleLazy 'ajkaanbal/vim-jade', {
\ 'autoload' : {
\   'filetypes': ['jade']
\ }}
NeoBundleLazy 'Valloric/MatchTagAlways', {
\ 'autoload' : {
\   'filetypes': ['html', 'htmldjango']
\ }}
NeoBundleLazy 'othree/xml.vim', {
\ 'autoload' : {
\   'filetypes': ['xml', 'html', 'htmldjango']
\ }}
NeoBundle 'xolox/vim-session', {'depends': 'xolox/vim-misc'}
NeoBundleLazy 'moll/vim-bbye', {
      \ 'autoload': {
      \   'commands': 'Bdelete'
      \}}

" NeoBundleLazy 'othree/yajs.vim', { 'autoload' : {
      " \ 'filetypes' : 'javascript',
      " \ }}
NeoBundleLazy 'marijnh/tern_for_vim', { 'autoload' : {
      \ 'filetypes' : 'javascript',
      \ }}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim', { 'autoload': {
      \ 'filetypes': 'javascript'}}
" NeoBundleLazy 'briancollins/vim-jst', { 'autoload': {
      " \ 'filetypes': 'jst'}}
NeoBundleLazy 'elzr/vim-json', { 'autoload': {
      \ 'filetypes': 'json' }}
NeoBundleLazy 'chrisbra/Colorizer', {
\ 'autoload' : {
\   'filetypes': ['css', 'stylus'],
\   'commands': 'ColorHighlight'
\ }}
NeoBundleLazy 'wavded/vim-stylus', {
\ 'autoload' : {
\   'filetypes': 'stylus'
\ }}
NeoBundleLazy 'guns/xterm-color-table.vim.git', {
      \ 'autoload': {
      \   'commands': 'XtermColorTable'
      \ }}

NeoBundle 'cohama/lexima.vim' " Automatic closing quotes,...
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'tpope/vim-vinegar'
NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'kshenoy/vim-signature' " show marks
NeoBundleLazy 'Yggdroot/indentLine',
\{'autoload': {'filetypes': ['javascript','python', 'html', 'css']}}
NeoBundle 'sdanielf/vim-stdtabs' " common indents
NeoBundleLazy 'junegunn/vim-easy-align',{
\ 'autoload': {
\   'commands': 'EasyAlign'
\ }}
NeoBundleLazy 'Lokaltog/vim-easymotion',
\{'autoload': {'filetypes': ['javascript','python']}}
" NeoBundle 'tommcdo/vim-exchange'
NeoBundleLazy 'wellle/targets.vim', {
\ 'autoload': { 'filetypes': ['python','javascript'] }
\}

NeoBundleLazy 'arecarn/crunch.vim', {
\ 'depends': 'arecarn/selection.vim',
\ 'autoload': {
\   'commands': 'Crunch'
\ }}

" NeoBundleLazy 'krisajenkins/dbext.vim', {
" \ 'autoload': {'filetypes': 'sql'}
" \}

" NeoBundleLazy 'fatih/vim-go', {
" \ 'autoload': {'filetypes': 'go'}
" \}
NeoBundleLazy 'shmup/vim-sql-syntax', {
\ 'autoload': {'filetypes': 'sql'}
\}

" from vim.org
NeoBundleLazy 'matchit.zip', { 'autoload' : {
      \ 'mappings' : [['nxo', '%', 'g%']]
      \ }}
let bundle = neobundle#get('matchit.zip')
function! bundle.hooks.on_post_source(bundle)
    silent! execute 'doautocmd Filetype' &filetype
endfunction

" NeoBundleLazy 'amadeus/django.vim', {
" \ 'autoload' : {
" \   'filetypes': ['htmldjango','django']
" \ }}

NeoBundleLazy 'artnez/vim-wipeout', {'autoload': {'commands': 'Wipeout'}}
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'christoomey/vim-tmux-runner'
" NeoBundle 'krisajenkins/vim-pipe'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'wellle/tmux-complete.vim'
NeoBundle 'ajkaanbal/autoswap.vim'
" NeoBundle 'jszakmeister/vim-togglecursor'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'haya14busa/incsearch.vim'
" Plugins for syntax highlight
" NeoBundleLazy 'sheerun/vim-polyglot',
" \ {'autoload':{ 'filetypes': 'scala'}}
" NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'wakatime/vim-wakatime'
" NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'wincent/terminus'
" NeoBundle 'sickill/vim-pasta'
NeoBundleLazy  'pangloss/vim-javascript',
\ {'autoload': {'filetypees': ['jsx', 'html']}}
NeoBundleLazy 'mxw/vim-jsx',
\{ 'depends': 'pangloss/vim-javascript',
\  'autoload': {'filetypes': ['jsx', 'html']}
\}
NeoBundle  'derekwyatt/vim-scala'
"Neobundle configuration

call neobundle#config('unite.vim', {
\   'lazy': 1,
\   'autoload': {
\       'commands' : [{ 'name' : 'Unite',
\                       'complete' : 'customlist,unite#complete_source'}]
\   }})

"local plugins vim
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

call neobundle#end()

filetype plugin indent on
set lazyredraw
set ttyfast

" Enable syntax color.
syntax enable

" Installation check.
NeoBundleCheck
" }}}


"---------------------------------------------------------------------------
" Encoding:"{{{

" The automatic recognition of the character code.
" Setting of the encoding to use for a save and reading.
" Make it normal in UTF-8 in Unix.
set encoding=utf8

" Default fileformat.
set fileformat=unix
" " Automatic recognition of a new line.
set fileformats=unix,dos,mac
"}}}


"---------------------------------------------------------------------------
" Search:"{{{

"" Ignore the case of normal letters.
set ignorecase

" If the search pattern contains upper case characters, override ignorecase
" option.
set smartcase

" Enable incremental search.
set incsearch

" Don't highlight search result.
set hlsearch

" Searches wrap around the end of the file.
set wrapscan

" Clear last searching highlight
nnoremap <silent><space><space> :<c-u>let @/ = ""<return><esc>
"}}}


"---------------------------------------------------------------------------
" Edit: "{{{

" Smart insert tab setting.
set smarttab

" Exchange tab to spaces.
set expandtab

" Substitute <Tab> with blanks.
set tabstop=4

" Spaces instead <Tab>.
set softtabstop=4

" Autoindent width.
set shiftwidth=4

" Round indent by shiftwidth.
set shiftround

" Enable modeline.
set modeline

" Use clipboard register.
if has('unnamedplus')
  set clipboard& clipboard+=unnamedplus
else
  set clipboard& clipboard+=unnamed
endif

" Disable auto wrap.
autocmd MyAutoCmd FileType *
      \ if &l:textwidth != 70 && &filetype !=# 'help' |
      \    setlocal textwidth=0 |
      \ endif

" Enable backspace delete indent and newline.
set backspace=indent,eol,start

" Highlight parenthesis.
set showmatch

" Highlight when CursorMoved.
set cpoptions-=m
set matchtime=3

" Highlight <>.
set matchpairs+=<:>

" Display another buffer when current buffer isn't saved.
set hidden

" Auto reload if file is changed.
set autoread

" Ignore case on insert completion.
set infercase

" Enable folding.
set foldenable
set foldmethod=indent
set foldlevelstart=6



set fillchars=vert:\|
set commentstring=%s

" Exclude = from isfilename.
set isfname-==

" Reload .vimrc automatically.
autocmd MyAutoCmd BufWritePost vimrc source $MYVIMRC

" Keymapping timeout.
set timeout timeoutlen=1200 ttimeoutlen=50

" CursorHold time.
set updatetime=1000

" Enable virtualedit in visual block mode and cursor beyond the last char
set virtualedit=block,onemore

" Set keyword help.
set keywordprg=:help

" Check timestamp more for 'autoread'.
autocmd MyAutoCmd WinEnter * checktime

" Disable paste.
autocmd MyAutoCmd InsertLeave *
      \ if &paste | set nopaste | echo 'nopaste' | endif |
      \ if &l:diff | diffupdate | endif

" Update diff.
autocmd MyAutoCmd InsertLeave * if &l:diff | diffupdate | endif

" auto update files
autocmd MyAutoCmd InsertLeave,BufLeave,FocusLost * silent! update

"}}}


"---------------------------------------------------------------------------
"" View:{{{

" Show line number.
set relativenumber
augroup RelativeNumber
  autocmd!
  autocmd WinLeave,InsertEnter * set norelativenumber number
  autocmd WinEnter,InsertLeave * set relativenumber
augroup END

" Show <TAB> and <CR>
set list
set listchars=tab:▶\ ,trail:·,extends:»,precedes:«,nbsp:%,eol:¬

" Do not wrap long line.
set nowrap

" Wrap conditions.
set whichwrap+=h,l,<,>,[,],b,s,~

" Always display statusline.
set laststatus=0

" Height of command line.
set cmdheight=1

" show command on STAtusline.
set showcmd

" Not show mode.
set noshowmode

" Show title.
set title

" Title length.
set titlelen=79

" Set statusline.
let &statusline="%F%m%r%h%w" "fullpath and status modified sign
     \ . "%y" "filetype
     \ . "%="
     \ . "[%l\/%L:\%v]" "line number and column number


" Turn down a long line appointed in 'breakat'
set linebreak
set showbreak=>\
set breakat=\ \ ;:,!?

" Do not display greetings message at the time of Vim start.
set shortmess=aTI

" Disable bell.
set t_vb=
set novisualbell

" Display candidate supplement.
set wildmenu
set wildmode=longest,full
set wildignore& " A file that matches with one of these patterns is ignored
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~      " Backup files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.jar                            " Java archives
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.stats                          " Pylint stats
set wildignore+=**/node_module/**                " node modules
set wildignore+=**/bower/**                      " bower modules

" Increase history amount.
set history=500

" Display all the information of the tag by the supplement of the Insert mode.
set showfulltag

" Can supplement a tag in a command-line.
set wildoptions=tagfile

" Enable spell check.
set spelllang=en_us

" Completion setting.
set completeopt=menuone,longest
set completeopt+=preview

" tells VIM where to search for autocompletion
"  . : current file
"  w : files in other windows
"  k : files in other windows
"  b : files in loaded buffers, not in a window
"  t : the `tags` file
"  i : current and included files
set complete=.,k,b,u,t,i

" Set popup menu max height.
set pumheight=20

" Report changes.
set report=0

" Maintain a current line at the time of movement as much as possible.
set nostartofline

" Splitting a WINdow will put the new window below the current one.
set splitbelow

" Splitting a window will put the new window right the current one.
set splitright

" Set minimal width for current window.
set winwidth=30

" Set minimal height for current window.
set winheight=1

" Set maximam maximam command line window.
set cmdwinheight=5

" No equal window size.
set noequalalways

" Adjust window size of preview and help.
set previewheight=8
set helpheight=12

" When a line is long, do not omit it in @.
set display=lastline

" Display an invisible letter with hex format.
set display+=uhex

" Disable automatically insert comment.
autocmd MyAutoCmd FileType *
      \ setl formatoptions-=ro | setl formatoptions+=mM

if has('conceal')
  " For conceal.
  set conceallevel=2 concealcursor="nvi"
endif

" View setting.
set viewdir=~/.vim/view viewoptions-=options viewoptions+=slash,unix

set tags=.tags

"}}}


"---------------------------------------------------------------------------
" Syntax:"{{{
"
" Enable smart indent.
set autoindent

augroup MyAutoCmd

  " Auto reload VimScript.
  autocmd BufWritePost,FileWritePost *.vim if &autoread
        \ | source <afile> | echo 'source ' . bufname('%') | endif

  " Enable omni completion.
  autocmd FileType c setlocal omnifunc=ccomplete#Complete
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType python set omnifunc=jedi#completions
  " autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType javascript setlocal omnifunc=tern#Complete | setlocal completeopt-=preview
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType python setlocal completeopt-=preview
  if has('python3')
    autocmd FileType python setlocal omnifunc=python3complete#Complete
  else
    " autocmd FileType python setlocal omnifunc=jedi#completions
  endif
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  "Fold methods
  autocmd FileType python setlocal foldmethod=indent
  autocmd FileType javascript setlocal foldmethod=indent
  autocmd FileType vim setlocal foldmethod=marker

  " Update filetype.
  autocmd BufWritePost *
  \ if &l:filetype ==# '' || exists('b:ftdetect')
  \ |   unlet! b:ftdetect
  \ |   filetype detect
  \ | endif

  " Improved include pattern.
  autocmd FileType html
        \ setlocal includeexpr=substitute(v:fname,'^\\/','','') |
        \ setlocal path+=./;/ |
        \ setlocal foldlevelstart=15

  "Pretty json
  autocmd FileType json setlocal equalprg=json_reformat
  autocmd FileType htmldjango setlocal sw=2 ts=2 sts=2
  autocmd FileType stylus  setlocal sw=2 ts=2 sts=2
  autocmd FileType xml  setlocal sw=2 ts=2 sts=2
  autocmd FileType html  setlocal sw=2 ts=2 sts=2 " equalprg=js-beautify\ -f\ -\ --type\ html\ -s\ 2
  autocmd FileType yaml  setlocal sw=2 ts=2 sts=2
  autocmd FileType yaml  setlocal sw=2 ts=2 sts=2
  autocmd BufNewFile,BufRead *.ejs set filetype=html

  " Close help buffer with q
  autocmd FileType help :nnoremap <buffer> <silent> q :<C-u>bdelete<CR>
  autocmd CmdwinEnter * map <buffer> <silent> q :<C-u>q<CR>

  "functions
    fun! <SID>DetectHTMLDjango()
      let n = 1
      while n < 20 && n < line("$")
        if getline(n) =~ '{%\s*\(extends\|block\|comment\|ssi\|if\|for\| blocktrans\)\>'
          set ft=htmldjango
          return
        endif
        let n = n + 1
      endwhile
    endfun

    "autocmds
    autocmd BufNewFile,BufRead *.html call <SID>DetectHTMLDjango()

    " My commands
    command! -nargs=+ Run :cexpr system('<args>') | copen
augroup END

" Python
let g:python_highlight_all = 1

" XML
let g:xml_syntax_folding = 1

" Vim
let g:vimsyntax_noerror = 1
let g:vim_indent_cont = 0

" Bash
let g:is_bash = 1

" JavaScript
let g:SimpleJsIndenter_BriefMode = 1
let g:SimpleJsIndenter_CaseIndentLevel = -1

" Vim script
" augroup: a
" function: f
" lua: l
" perl: p
" ruby: r
" python: P
" tcl: t
" mzscheme: m
let g:vimsyn_folding = 'af'

" Syntax highlight for user commands.
augroup syntax-highlight-extends
  autocmd!
  autocmd Syntax vim
        \ call s:set_syntax_of_user_defined_commands()
augroup END

function! s:set_syntax_of_user_defined_commands()
  redir => _
  silent! command
  redir END

  let command_names = join(map(split(_, '\n')[1:],
        \ "matchstr(v:val, '[!\"b]*\\s\\+\\zs\\u\\w*\\ze')"))

  if command_names == '' | return | endif

  execute 'syntax keyword vimCommand ' . command_names
endfunction

"highlight modifications
set t_Co=256
colorscheme hybrid
set background=dark

highlight ExtraWhitespace ctermbg=9

"# Pemenu colors
hi Pmenu ctermfg=255 ctermbg=236
hi PmenuSel ctermbg=255 ctermfg=24
hi PmenuSbar ctermbg=233
hi PmenuThumb ctermbg=238

"# color options to listchars
hi NonText ctermfg=darkgrey guifg=darkgrey ctermbg=none
hi clear SpecialKey
hi link SpecialKey NonText

"# hl Matchit
highlight MatchParen cterm=bold ctermfg=255 ctermbg=27

"#right margin
set colorcolumn=80
highlight ColorColumn ctermbg=235 ctermfg=white guibg=#592929
highlight OverLength ctermbg=246 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"# Cursor line
set cursorline
augroup cline
  autocmd!
  autocmd WinLeave,InsertEnter * set nocursorline
  autocmd WinEnter,InsertLeave * set cursorline
augroup END
"}}}


"---------------------------------------------------------------------------
" Plugins: "{{{

" UltiSnips {{{

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
"}}}

"# Vim-session setting{{{
let g:session_autosave = 'yes'
let g:session_autoload = 'no'
"}}}

" color_highlight {{{
let g:colorizer_auto_color = 0
"}}}

" unite.vim"{{{

" Variables.
let g:unite_source_history_yank_enable = 1
let g:unite_enable_split_vertically = 0
let g:unite_winheight = 12
let g:unite_enable_short_source_names = 1
let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_limit = 300
let g:unite_source_directory_mru_limit = 300
let g:unite_split_rule = 'botright'
" Like Textmate icons.
let g:unite_marked_icon = '✗'
let g:unite_prompt = '» '
let g:unite_enable_start_insert = 1
if executable('ag')

    " Use ag in unite grep source.
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
    \ '--line-numbers --nocolor --nogroup --all-text'
    let g:unite_source_grep_recursive_opt = ''
    "ignore what there is in .gitignore or .hgignore
    let g:unite_source_rec_async_command=['ag', '--follow', '--nocolor', '--nogroup', '-g', '']
endif


nnoremap <leader>f :<C-u>Unite file_rec/async:! -sync -prompt-direction=top<CR>
nnoremap <leader>p :<C-u>Unite file_rec/async -sync -prompt-direction=top<cr>
nnoremap <leader>b :<C-u>Unite buffer -prompt-direction=top<cr>
nnoremap <leader>t :<C-u>Unite tab -prompt-direction=top<cr>
nnoremap <leader>r :<C-u>Unite file_mru -prompt-direction=top<CR>
nnoremap <leader>m :<C-u>Unite mark -prompt-direction=top<CR>
nnoremap <leader>k :<C-u>Unite bookmark -prompt-direction=top<CR>
nnoremap <leader>j :<C-u>Unite jump -prompt-direction=top<CR>
nnoremap <leader>c :<C-u>Unite change -prompt-direction=top<CR>
nnoremap <leader>o :<C-u>Unite outline -prompt-direction=top<CR>
nnoremap <leader>/ :<C-u>Unite grep:. -prompt-direction=top<CR>
nnoremap <leader>a :<C-u>Unite buffer file_mru bookmark -prompt-direction=top<CR>
nnoremap <leader>* :<C-u>UniteWithCursorWord grep:. -prompt-direction=top<cr>
nnoremap <leader><Space> :<C-u>Unite tmuxcomplete<cr>

autocmd MyAutoCmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings() "{{{
    " Directory partial match.
    call unite#custom#default_action('directory', 'narrow')

    "Split-right with C-v
    imap <silent><buffer><expr> <C-v>  unite#do_action('right')

    " Clear searching highlight
    let @/ = ""

    " Disable whitespace highlighting
    execute 'silent DisableWhitespace'

    nmap <buffer> <ESC>      <Plug>(unite_exit)
endfunction "}}}


" Airline: {{{
"
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_enable_unite=1
let g:airline_theme='lucius'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" }}}

"  Syntastic{{{
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '☢'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['frosted', 'pylint','flake8']
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 3
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1

highlight SyntasticStyleErrorSign cterm=bold ctermfg=166
highlight SyntasticErrorSign cterm=bold ctermfg=1

nnoremap <silent><F5> :<C-u>SyntasticToggleMode<CR>
"}}}

" netrw {{{
let g:netrw_liststyle=3
autocmd FileType netrw setl bufhidden=wipe
"}}}

" easy-motion {{{
    "Bi-directional find motion
    nmap s <Plug>(easymotion-s)
"}}}

"indentLine {{{
let g:indentLine_faster = 1
let g:indentLine_color_term = 236
let g:indentLine_noConcealCursor = "nc"
let g:indentLine_char ='┆'

"}}}

" splitjoin {{{
  let g:splitjoin_split_mapping = ''
  let g:splitjoin_join_mapping = ''

  nnoremap gJ :silent SplitjoinJoin<cr>
  nnoremap gS :silent SplitjoinSplit<cr>
"}}}

" vim-togglecursor{{{
let g:togglecursor_force='xterm'
"}}}

" YouCompleteme {{{
    let g:EclimCompletionMethod = 'omnifunc'
    nnoremap gD :<c-u>YcmCompleter GoTo<cr>
    let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1,
        \ 'sql' : 1
        \}

"}}}

" Easyalign {{{
vnoremap <silent> <C-@> :EasyAlign<Enter>
"}}}

" tcomment {{{
  let g:tcommentTextObjectInlineComment=''
"}}}

" vim-tmux-runner {{{
nnoremap R :VtrSendLinesToRunner<CR>
vnoremap <Enter> :VtrSendLinesToRunner<cr>
"}}}

" Terminux {{{
  let g:TerminusMouse=0
"}}}


"}}}

" gitgutter {{{
  nmap [h <Plug>GitGutterPrevHunk
  nmap ]h <Plug>GitGutterNextHunk
  nmap ghs <Plug>GitGutterStageHunk
  nmap ghr <Plug>GitGutterRevertHunk
  nmap ghp <Plug>GitGutterPreviewHunk

  let g:gitgutter_sign_added = '✜'
  let g:gitgutter_sign_modified = '✎'
  let g:gitgutter_sign_removed = '✄'
  let g:gitgutter_sign_modified_removed = '✎✄'
" }}}

" matchtagalways {{{
   let g:mta_filetypes = {
           \ 'html' : 1,
           \ 'xhtml' : 1,
           \ 'xml' : 1,
           \ 'jinja' : 1,
           \ 'htmldjango' : 1,
           \}
"}}}

"{{{ vim-ref
if neobundle#tap('vim-ref')
  function! neobundle#hooks.on_source(bundle)
    let g:ref_cache_dir = expand('~/.cache/ref')
    let g:ref_use_vimproc = 1
    let g:ref_pydoc_complete_head = 1

    autocmd MyAutoCmd FileType ref call s:ref_my_settings()
    function! s:ref_my_settings() "{{{
      " Overwrite settings.
      nnoremap <buffer> q <C-w>c
    endfunction
  endfunction
endif
"}}}

"{{{ vim-niji
  let g:niji_matching_filetypes = ['lisp', 'ruby', 'python']
"}}}

"{{{ dbext
    let g:dbext_default_window_use_horiz = 1
    let g:dbext_default_use_sep_result_buffer = 1
    let g:dbext_default_buffer_lines = 35
"}}}

"{{{ vim- pipe
    autocmd MyAutoCmd BufNewFile,BufReadPost *.mql setlocal filetype=mongoql | set ft=javascript
    autocmd MyAutoCmd FileType mongoql let b:vimpipe_command="mongo" | let b:vimpipe_filetype="javascript"
"}}}

" tmux-complete {{{
  let g:tmuxcomplete#trigger = 'omnifunc'
"}}}

"}}}

"---------------------------------------------------------------------------
" KeyMappings: "{{{

" Remove all trailing whitespace:
nnoremap <silent> d<space> :StripWhitespace<esc>

"#Navigate btween buffers
nnoremap <silent>gb :bnext<CR>
nnoremap <silent>gB :bprevious<CR>
nnoremap <C-T> <C-^>
nnoremap <silent>Q :<c-u>Bdelete<CR>

inoremap <silent><C-l> <esc><C-w>l
inoremap <silent><C-k> <esc><C-w>k
inoremap <silent><C-h> <esc><C-w>h
inoremap <silent><C-l> <esc><C-w>l

" Useful save mappings.
nnoremap <silent> <CR> :<C-u>w<CR>
augroup saveMap
    autocmd! CmdwinEnter *  nunmap <CR>
    autocmd! CmdwinLeave *  nnoremap <silent> <CR> :<C-u>w<CR>
augroup END

map ' `

" Easy escape."{{{
inoremap jj           <Esc>`^
cnoremap <expr> j       getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'
onoremap jj           <ESC>`^

"}}}

"# Change to paste mode to avoid akward indentation
nnoremap <F12> :set invpaste paste?<CR>
set pastetoggle=<F12>

"Tmux integration
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"indent with tab and shift tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

cnoremap <C-P> <up>
cnoremap <C-N> <down>
cnoremap <C-a> <home>
cnoremap <C-e> <end>

nnoremap <silent> <C-W>z :wincmd z<Bar>cclose<Bar>lclose<CR>
nnoremap D dd

"Search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

"}}}


"---------------------------------------------------------------------------
" Others: {{{

"Session options
set ssop-=options    " do not store global and local values in a session
set ssop+=folds
set path+=**

" }}}


if !has('vim_starting')
    " Call on_source hook when reloading .vimrc.
    call neobundle#call_hook('on_source')
endif

" vim:foldmethod=marker shiftwidth=2 tabstop=2
