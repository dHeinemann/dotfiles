""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'vim-scripts/vimwiki'
"Bundle 'superjudge/tasklist-pathogen'
Bundle 'fholgado/minibufexpl.vim'
"Bundle 'vim-scripts/taglist.vim'
"Bundle 'majutsushi/tagbar'
"Bundle 'scrooloose/nerdtree'
"Bundle 'msanders/snipmate.vim'
"Bundle 'vim-scripts/PureBasic-Syntax-file'
"Bundle 'vim-scripts/slimv.vim'
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'plasticboy/vim-markdown'
"Bundle 'c9s/perlomni.vim'
"Bundle 'vim-scripts/AutoComplPop'
"Bundle 'kien/ctrlp.vim'
"Bundle 'scrooloose/syntastic'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Detect the filetype
filetype plugin indent on

" Enable PerlComplPop
"let g:acp_enableAtStartup = 1
"let g:acp_behaviorPerlOmniLength = 1

" Fix E303
"set directory=.,$TEMP

" Hide buffers in background instead of closing; preserve undo history
set hidden

" Enable filetype plugins
filetype plugin on

" Color stuff
"set t_Co=256
"set t_AF=^[[38;5;%dm
"set t_AB=^[[48;5;%dm

" Enable omnicompletion
"set ofu=syntaxcomplete#Complete

" Enable spellchecking
"setlocal spell spelllang=en_au

" Turn off Vi compatibility mode
set nocompatible

" Disable backups
set nobackup

" Search text letter-by-letter
set incsearch

" Flash the screen instead of beeping
set vb t_vb=

" Don't beep on error
"set noerrorbells

" Don't flash the screen on error
"set novisualbell " Don't flash the screen on error.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display & formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on syntax highlighting
syntax on

" Display a column marker at 79 lines
"set cc=73

" Make tab use X spaces instead of 8
set tabstop=4

" Indent with X spaces instead of 8
set shiftwidth=4

" Always indent at in multiples of $shiftwidth
set shiftround

" Use tabs instead of spaces
set expandtab

" Display the cursor position
set ruler

" Display the current Mode
set showmode

" Show commands as they're typed
set showcmd

" Show matching parenthesis
set showmatch

" Show line numbers
set number

" Automatically indent my syntax, intelligently
set smartindent

" Always display X lines above and below the cursor
set scrolloff=7

" Wrap the text, showing as much as possible per line
set nowrap

" Wrap the text, breaking at convenient places
set linebreak
set breakat -=_

" When a line is too long, display as much as possible
set display=lastline

" Be case insensitive...
set ignorecase

" ...unless I include caps in my search
set smartcase

" Don't highlight searches
set nohlsearch

" Remove some 'press Enter to continue' prompts.
set shortmess=atI

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation and Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't change the cursor's column
set nostartofline

" Enable mouse usage
set mouse=a

" Make backspace work normally
set backspace=2

" Rebind j and k to move through lines normally.
map j gj
map k gk

" Remap + and - to increment/decrement
nmap + <C-a>
nmap - <C-x>

" Bind CTRL+k/j/h/l to navigate through windows.
"nnoremap <C-k> <C-w>k
"nnoremap <C-j> <C-w>j
"nnoremap <C-l> <C-w>l
"nnoremap <C-h> <C-w>h

" Wrap text
nnoremap <C-t> 0gq:set tw=72<CR>

" Bind CTRL+k/j to scroll up and down
nnoremap <C-k> 2<C-y>
nnoremap <C-j> 2<C-e>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Rebind CTRL+a to Select All (replaces Increment #)
"nnoremap <C-A> ggVG

" Select all & copy to clipboard (remembering position)
"nnoremap <C-A> mZggVG"+y`Z

" Remove all blank lines with :rb
"nmap :rb :g/^\s*$/d<CR>

" Add <P></P> tags to every line with :ap
"nmap :ap :%s/^/\<p>/g<CR>:%s/$/\<\/p>/g<CR>

" Taglist
"nmap <F3> :TlistToggle<CR>
"let Tlist_Sort_Type = "name"
""let Tlist_WinWidth = 50
"let Tlist_Inc_Winwidth = 0
"let Tlist_Compact_Format = 1
"let Tlist_Display_Tag_Scope = 0

"map <F1> <nop>

"NERDTree
"nmap <F2> :NERDTreeToggle<CR>
"nmap <C-F2> :NERDTreeFind<CR>

"Tagbar
"nmap <F3> :TagbarToggle<CR>

"Tasklist
"nmap <F4> :TaskList<CR>

" Rebind F5-8 to change syntax highlighting.
"nmap <F5> :set syntax=html<cr>
"nmap <F6> :set syntax=css<cr>
"nmap <F7> :set syntax=javascript<cr>
"nmap <F8> :set syntax=java<cr>

" MiniBuffer mappings
"nmap <Leader>m :TMiniBufExplorer<cr>

"nmap <F5> :!java "%:t:r"<cr>
"nmap <F6> :!javac "%"<cr>

" Open Tasklist
"map T :TaskList<CR>
"let g:tlWindowPosition = 1
"let g:tlRememberPosition = 1
"map <leader>v <Plug>TaskList

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If statements
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=PragmataPro:h14
"set fileformat=dos

"map <F12> :source ~/_vimrc<cr>

" Solarized theme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrasts="high"
let g:solarized_visibility="normal"
let g:solarized_italic=0
colo solarized

" If I'm using Gvim...
if has("gui_running")
	" Hide the toolbar
	set guioptions-=T

	" Highlight the current line
	set cursorline

    " Set window size
    set lines=24
    set columns=80
endif
