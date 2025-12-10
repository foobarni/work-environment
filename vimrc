:set relativenumber " numbers the lines relative to the cursor's position
:set number
" if both are set, the cursor's line number is absolute

:filetype plugin on " filetype-specific plugins
:filetype indent on " filetype-specific indentation rules

set expandtab " Converts tabs to space when typing
set shiftwidth=2 " The number of spaces for each step of indentation
set tabstop=2 " Number of spaces a tab equals to
set smarttab " Adjust tab behavior based on the context of indentation

" set lbr " Enable line breaking at convenient word boundaries when wrapping text
" set tw=500 " Set the text width to # of characters

set ai " Auto indentation for new lines based on the previous line
set si " Smart indentation
set wrap " Wrap lines without inserting line breaks

" :set incsearch " Enable incremental search, showing matches as you type
" :set hlsearch " Highlight all matches for the last search
:set ignorecase " case-insensitive search
:set smartcase " Overrides `ignorecase` when the search includes uppercase letters

:set mouse=a " Enable mouse support on all modes

" Colors
:syntax on " Syntax highlight based on the filetype
:set background=dark
colorscheme unokai
let g:airline_theme='lucius' "requires: vim-airline vim-airline-themes

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊:'
  let g:airline_symbols.linenr = ' ␤:'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'

set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Visible ruler toggle
nnoremap <Leader>cc :set colorcolumn=80<cr>
nnoremap <Leader>ncc :set colorcolumn-=80<cr>
