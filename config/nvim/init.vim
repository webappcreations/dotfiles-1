autocmd FileType vim setlocal foldmethod=marker tabstop=2 shiftwidth=2
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.vim/bundle')


" Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'ajkaanbal/autoswap.vim'
Plug 'wakatime/vim-wakatime'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'jszakmeister/vim-togglecursor'
" Plug 'Shougo/unite.vim' | Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'w0ng/vim-hybrid'
" Plug 'othree/yajs.vim', { 'for' : 'javascript' }
Plug 'marijnh/tern_for_vim', { 'for' : 'javascript' }
Plug 'posva/vim-vue'
Plug 'w0rp/ale'
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'ntpeters/vim-better-whitespace'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'moll/vim-bbye'
Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
Plug 'derekwyatt/vim-scala'
Plug 'airblade/vim-gitgutter'
Plug 'artnez/vim-wipeout', {'on': 'Wipeout'}
Plug 'tpope/vim-commentary'
Plug 'cohama/lexima.vim'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets',
Plug 'bps/vim-textobj-python'
Plug 'hynek/vim-python-pep8-indent'
Plug 'michaeljsmith/vim-indent-object'
Plug 'chase/vim-ansible-yaml'
Plug 'avakhov/vim-yaml'
" Plug 'ensime/ensime-vim'
Plug 'christoomey/vim-tmux-runner'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire' | Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-repeat'
Plug 'wellle/targets.vim'
Plug 'Yggdroot/indentLine'
Plug 'justinmk/vim-sneak'
Plug 'elzr/vim-json', {'for': 'json'}
" Plug 'jiangmiao/simple-javascript-indenter', {'for': 'javascript'}
Plug 'mxw/vim-jsx' | Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'wincent/terminus'
Plug 'tpope/vim-rsi'
Plug 'mattn/emmet-vim/', {'for': ['html', 'javascript.jsx']}
Plug 'neo4j-contrib/cypher-vim-syntax'
" Plug 'scrooloose/syntastic'
Plug 'tommcdo/vim-lion'
Plug 'lepture/vim-jinja'
Plug 'vim-scripts/SQLUtilities' | Plug 'vim-scripts/Align'
Plug 'tweekmonster/startuptime.vim'
Plug 'tommcdo/vim-lion'
Plug 'djoshea/vim-autoread'
Plug 'othree/xml.vim'
Plug 'jparise/vim-graphql'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


" Plug 'ajkaanbal/vim-scala-utils'
"


call plug#end()

" Encoding {{{
  set encoding=utf8
" }}}

" Edit {{{
  "options needed for whitespaces instead tabs
  set tabstop=4
  set shiftwidth=4
  set shiftround
  set expandtab
  set tags=.tags
  set wildignorecase
  set ignorecase
  set autoindent
  set hidden
" end-edit}}}

" KeyMappings: "{{{

  " Useful save mappings.
  nnoremap <silent> <CR> :<C-u>w<CR>
  augroup autosave
    autocmd! CmdwinEnter *  nunmap <CR>
    autocmd! CmdwinLeave *  nnoremap <silent> <CR> :<C-u>w<CR>
    autocmd! InsertLeave,BufLeave,FocusLost * silent! update
  augroup END
  if exists(':tnoremap')  " Neovim
    tnoremap <silent> <c-h> <c-\><c-n>:TmuxNavigateLeft<cr>
    tnoremap <silent> <c-j> <c-\><c-n>:TmuxNavigateDown<cr>
    tnoremap <silent> <c-k> <c-\><c-n>:TmuxNavigateUp<cr>
    tnoremap <silent> <c-l> <c-\><c-n>:TmuxNavigateRight<cr>
    tnoremap <Esc> <C-\><C-n>
    tnoremap <M-[> <Esc>
    tnoremap <C-v><Esc> <Esc>
    " Cannot use <c-\> here.
    " tnoremap <silent> <c-\> <c-\><c-n>:TmuxNavigatePrevious<cr>
  endif

  " Close help buffer with q
  autocmd FileType help :nnoremap <buffer> <silent> q :<C-u>bdelete<CR>
  autocmd CmdwinEnter * map <buffer> <silent> q :<C-u>q<CR>

  " Clear last searching highlight
  nnoremap <silent><space><space> :<c-u>let @/ = ""<return><esc>

" end-keymapping}}}

" View {{{
  colorscheme hybrid
  set background=dark
  set number
  set nowrap
  set showcmd
  set list
  set listchars=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:%,eol:¬
  set splitbelow
  set splitright
  set foldlevel=5
  set colorcolumn=80
  set cursorline
  set concealcursor=""
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175


  hi ExtraWhitespace ctermbg=9
  hi Pmenu ctermfg=255 ctermbg=236
  hi PmenuSel ctermbg=255 ctermfg=24
  hi PmenuSbar ctermbg=233
  hi PmenuThumb ctermbg=238
  hi NonText ctermfg=darkgrey guifg=darkgrey ctermbg=none
  hi clear SpecialKey
  hi link SpecialKey NonText
  hi MatchParen cterm=bold ctermfg=255 ctermbg=27
  hi ColorColumn ctermbg=235 ctermfg=white guibg=#592929
  hi OverLength ctermbg=246 ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
  augroup VIMRC
    autocmd!
    autocmd WinLeave,InsertEnter * set nocursorline
    autocmd WinEnter,InsertLeave * set cursorline
  augroup END
  " Show line number.
  set relativenumber
  augroup RelativeNumber
    autocmd!
    autocmd WinLeave,InsertEnter * set norelativenumber number
    autocmd WinEnter,InsertLeave * set relativenumber
  augroup END

" end-view}}}

" Utils {{{
  let g:mapleader = ','
  " Check highlight colors
  " :help highlight
  " :source $VIMRUNTIME/syntax/hitest.vim
" }}}

" Mappings {{{
  nnoremap <silent> d<space> :StripWhitespace<esc>
  nnoremap <silent>Q :<c-u>Bdelete<CR>

  "indent with tab and shift tab
  vnoremap <Tab> >gv
  vnoremap <S-Tab> <gv
  " save read-only files
  cmap w!! w !sudo tee % >/dev/null

" }}}

" Syntax {{{
  augroup VIMRC
    autocmd FileType,BufRead,BufNewFile *.vue setlocal tabstop=2 shiftwidth=2
    autocmd BufRead,BufNewFile *.rml set ft=xml
    autocmd FileType vim setlocal foldmethod=marker tabstop=2 shiftwidth=2
    autocmd FileType html,css,json,xml,htmldjango setlocal foldmethod=indent tabstop=2 shiftwidth=2 sts=2
    autocmd FileType javascript,javascript.jsx setlocal omnifunc=tern#Complete | setlocal completeopt-=preview | setlocal tabstop=2 shiftwidth=2
    autocmd FileType scala setlocal colorcolumn=80,100,120
    autocmd FileType json setlocal equalprg=json_reformat
  augroup END
" }}}

" Plugins settings: {{{

  " Vim-session setting {{{
    let g:session_autosave = 'yes'
    let g:session_autoload = 'no'
  " }}}

  " Denite {{{
    call denite#custom#var('file_rec', 'command',['rg', '--threads', '4', '--files', '--glob', '!.git'])
    " Ag command on grep source
    " Ripgrep command on grep source
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts',
        \ ['--vimgrep', '--no-heading'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
    call denite#custom#option('default', 'prompt', '» ')
    call denite#custom#map(
        \ 'insert',
        \ '<C-n>',
        \ '<denite:move_to_next_line>',
        \ 'noremap'
        \)
    call denite#custom#map(
        \ 'insert',
        \ '<C-p>',
        \ '<denite:move_to_previous_line>',
        \ 'noremap'
        \)
    nnoremap <leader>f :<C-u>Denite file_rec<CR>
    nnoremap <leader>b :<C-u>Denite buffer<CR>
    nnoremap <leader>g :Denite grep:::!<CR>
    nnoremap <leader>* :DeniteCursorWord grep:.<CR>
    call denite#custom#option('default', 'highlight_mode_insert', 'PmenuSel')
    call denite#custom#option('default', 'highlight_matched_char', 'Question')
    call denite#custom#map(
          \ 'insert',
          \ '<C-v>',
          \ '<denite:do_action:vsplit>',
          \ 'noremap'
          \)
  " }}}

  " Unite {{{
    " let g:unite_source_history_yank_enable = 1
    " let g:unite_enable_split_vertically = 0
    " let g:unite_winheight = 12
    " let g:unite_enable_short_source_names = 1
    " let g:unite_source_file_mru_filename_format = ':~:.'
    " let g:unite_source_file_mru_limit = 300
    " let g:unite_source_directory_mru_limit = 300
    " let g:unite_split_rule = 'botright'
    " let g:unite_marked_icon = '✗'
    " let g:unite_prompt = '» '
    " let g:unite_enable_start_insert = 1
    " nnoremap <leader>p :<C-u>Unite file_rec/async -prompt-direction=top<cr>
    " nnoremap <leader>b :<C-u>Unite buffer -prompt-direction=top<cr>
    " nnoremap <leader>t :<C-u>Unite tab -prompt-direction=top<cr>
    " nnoremap <leader>r :<C-u>Unite file_mru -prompt-direction=top<CR>
    " nnoremap <leader>m :<C-u>Unite mark -prompt-direction=top<CR>
    " nnoremap <leader>k :<C-u>Unite bookmark -prompt-direction=top<CR>
    " nnoremap <leader>j :<C-u>Unite jump -prompt-direction=top<CR>
    " nnoremap <leader>c :<C-u>Unite change -prompt-direction=top<CR>
    " nnoremap <leader>o :<C-u>Unite outline -prompt-direction=top<CR>
    " nnoremap <leader>/ :<C-u>Unite grep:. -prompt-direction=top<CR>
    " nnoremap <leader>a :<C-u>Unite buffer file_mru bookmark -prompt-direction=top<CR>
    " nnoremap <leader>* :<C-u>UniteWithCursorWord grep:. -prompt-direction=top<cr>
    " autocmd VIMRC filetype unite call s:unite_my_settings()
    " function! s:unite_my_settings()
    "     let @/ = ""
    "     execute 'silent DisableWhitespace'
    "     nmap <buffer> <ESC>      <Plug>(unite_exit)
    " endfunction

  " lightline {{{

    let g:lightline = {
      \ 'colorscheme': 'ajk',
      \ }

  " }}}

  " buftabline {{{
    let g:buftabline_numbers=1
    hi BufTabLineFill ctermbg=235 ctermfg=white
    hi BufTabLineHidden ctermbg=235 ctermfg=243
    hi link BufTabLineCurrent TabLineSel
    hi BufTabLineActive ctermbg=236 ctermfg=243
  " }}}

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

  " vimviler {{{
    " let g:vimfiler_tree_leaf_icon = ' '
    " let g:vimfiler_tree_opened_icon = '▾'
    " let g:vimfiler_tree_closed_icon = '▸'
    " let g:vimfiler_file_icon = '-'
    " let g:vimfiler_marked_file_icon = '*'
    " let g:vimfiler_options_direction = 'topright'
    " let g:vimfiler_options_direction = 'topright'

    " nnoremap <silent><F2> :<C-u>VimFilerExplorer -find<CR>
    " call vimfiler#custom#profile('default', 'context', {
    "   \ 'safe' : 0,
    "   \ })

     "}}}

  " Tagbar {{{
    nnoremap <F8> :<C-u>TagbarToggle<CR>
  " }}}

  " splitjoin {{{
    let g:splitjoin_split_mapping = ''
    let g:splitjoin_join_mapping = ''

    nnoremap gJ :silent SplitjoinJoin<cr>
    nnoremap gS :silent SplitjoinSplit<cr>
  "}}}

  " UltiSnips {{{

    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

  "}}}

  " YouCompleteme {{{
    " let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  "}}}

  " Deoplete {{{
    let g:deoplete#enable_at_startup = 1
    " let g:deoplete#omni_patterns = {}
    " let g:deoplete#omni_patterns.scala = '[^. *\t]\.\w*'
    let g:deoplete#omni#input_patterns = {}
    let g:deoplete#omni#input_patterns.scala = '[^. *\t]\.\w*'
  " }}}

  " Tern {{{
    autocmd FileType javascript nnoremap gD :<c-u>TernDef<cr>
  "}}}

  " JSX{{
    let g:jsx_ext_required = 0
  " }}

  " Closetags {{
    let g:closetag_filenames = "*.html,*.js,*.pt"
  " }}

  " EasyAlign {{{
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)
  "}}}

  " Jedi {{{
    autocmd FileType python setlocal completeopt-=preview
    let g:jedi#goto_assignments_command = "gD"
    hi jediFunction term=NONE cterm=NONE ctermfg=33 ctermbg=0
    hi jediFat term=bold,underline cterm=bold,underline ctermbg=0 ctermfg=248
  " }}}

  " vim-tmux-runner {{{
    nnoremap R :VtrSendLinesToRunner<CR>
    vnoremap <Enter> :VtrSendLinesToRunner<cr>
  "}}}

  "indentLine {{{
    let g:indentLine_faster = 1
    let g:indentLine_color_term = 236
    let g:indentLine_noConcealCursor = "nc"
    let g:indentLine_concealcursor=""
    let g:indentLine_char ='┆'
  "}}}

  "Sneak {{{
    let g:sneak#streak = 1
    hi link SneakPluginTarget ErrorMsg
    hi link SneakStreakMask  Comment
    hi link SneakStreakTarget  ErrorMsg
    hi link SneakStreakStatusLine ErrorMsg
  "}}}

  " vim-ensime {{{
    let g:EnErrorStyle='SpellBad'
  " }}}

  " syntastic {{{
  "
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_style_error_symbol = '☢'
    let g:syntastic_warning_symbol = '⚠'
    let g:syntastic_style_warning_symbol = '≈'
    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_python_checkers = ['frosted', 'pylint','flake8']
    let g:syntastic_auto_loc_list = 2
    let g:syntastic_loc_list_height = 3

  " }}}

  " {{{
    autocmd FileType scala nnoremap <silent> gD :call LanguageClient_textDocument_definition()<CR>

    let g:LanguageClient_serverCommands = {
        \ 'scala': ['~/.local/bin/scalameta_lsp', '--cwd', '~/dev/abraxas/nous'],
        \ }
  " }}}

" end-plugins-settings}}}

" vim:foldmethod=marker shiftwidth=2 tabstop=2
