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
