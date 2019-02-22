set nocompatible " required

set background=dark
colorscheme solarized8

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" Set case sensitivity on searches
set ignorecase   " Ignore case when searching
set smartcase    "    but, if case is used in the pattern, DON'T ignore it

set ruler   " Show line and column numbers, as well as percent of file
set showcmd " Show partial command in status line

" Enable folding
set foldmethod=indent
set foldlevel=99
set mouse=a

" Remap leader to ","
let mapleader                               = ","
let maplocalleader                          = ",,"
set timeout timeoutlen=1500

"enable UTF-8
set encoding=utf-8
set go+=a " Visual selection automatically copied to the clipboard

filetype    off          " required

" make python code pretty
let         python_highlight_all=1
syntax      on

" Put plugins and dictionaries in this dir
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let TheUndoDir = expand(vimDir . '/undo')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . TheUndoDir)
    let &undodir = TheUndoDir
    set undofile
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ##################################################
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Autocomplete
Plugin 'Valloric/YouCompleteMe'
let g:ycm_python_binary_path = '/usr/bin/python3'
" Use default config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" Also autocomplete in comments
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" Also select options with Enter
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
" Prevent blocking the view with C-y
let g:ycm_key_list_stop_completion = ['<C-y>']
" Invoke completion manually
let g:ycm_key_invoke_completion = '<C-Space>'

" Use leader-g to go to declaration
nnoremap <leader>g :YcmCompleter GoToDeclaration<CR>

" Linting
Plugin 'w0rp/ale'

" Vim-Ranger
" Plugin 'francoiscabrol/ranger.vim'
" " Ranger.vim dependency
" Plugin 'rbgrouleff/bclose.vim'
" let g:ranger_map_keys = 0
" map <leader>t :Ranger<CR>
"
" " Open ranger when vim opens a directory
" let g:ranger_replace_netrw = 1

" Open ranger if no file was specified
" function! StartUp()
"    if 0 == argc()
"        Ranger
"    end
" endfunction
" autocmd VimEnter * call StartUp()

" Nerdtree
Plugin 'scrooloose/nerdtree'
" hide *.pyc from nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$', '\.jpg$', '\.png$', '\.o$']
" Open NERDTree with <leader>t
:map <leader>t :NERDTreeToggle<CR>
" Open nerdtree if no file was specified
function! StartUp()
   if 0 == argc()
       NERDTree
   end
endfunction
autocmd VimEnter * call StartUp()

" Auto open nerdtree
" au VimEnter *  NERDTree

Plugin 'jistr/vim-nerdtree-tabs'

" git integration
Plugin 'tpope/vim-fugitive'

" Manage whitespace
Plugin 'ntpeters/vim-better-whitespace'
autocmd BufEnter * EnableStripWhitespaceOnSave

" Easy commenting
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims            = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs        = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign           = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines                 = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace            = 1

" turn on line numbers
set nu

" use the system keyboard
set clipboard=unnamed

" Brackets auto completion
Plugin 'delimitMate.vim'

" Tagbar
" needs "ctags" installed
Plugin 'majutsushi/tagbar'
" Toggle Tagbar with F8
nmap <F8> :TagbarToggle<CR>
" Auto open tagbar when source file opened
autocmd FileType * nested :call tagbar#autoopen(0)

" Fuzzy everything
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Add own snippets
set runtimepath+=~/.vim/snippets

" Undotree
Plugin 'mbbill/undotree'

" Alignment
Plugin 'junegunn/vim-easy-align'

" Airline and theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme                      = 'zenburn'
let g:airline#extensions#tabline#enabled = 1

" Autoformatting
Plugin 'Chiel92/vim-autoformat'
" Autoformat with <leader>f
:map <leader>f :Autoformat<CR>

" Gitgutter
Plugin 'airblade/vim-gitgutter'
set updatetime=100

" Display help lines for indentation levels
Plugin 'Yggdroot/indentLine'

" JSON
Plugin 'elzr/vim-json'

" Sublime-like multiple cursors
" Better use https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
" --> /f + cgn + n/.
" Plugin 'terryma/vim-multiple-cursors'
" " Prevent clash with deoplete
" func! Multiple_cursors_before()
"     call deoplete#init#_disable()
" endfunc
" func! Multiple_cursors_after()
"     call deoplete#init#_enable()
" endfunc

" Ansible
Plugin 'pearofducks/ansible-vim'

" YAML
Plugin 'chase/vim-ansible-yaml'

" LaTeX
" use <Leader><Leader>ll to compile in continuous mode
Plugin 'lervag/vimtex'
let g:vimtex_view_method         = 'general'
let g:vimtex_view_general_viewer = 'evince'
set conceallevel=0
let g:tex_conceal = ''

" EasyMotion
Plugin 'easymotion/vim-easymotion'
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
let g:EasyMotion_smartcase = 1
" EasyMotion searching config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" Disable highlighting when in insert mode
autocmd InsertEnter * :set nohlsearch

" Markdown preview
" Use <Leader>m
Plugin 'MikeCoder/markdown-preview.vim'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ##################################################

"split navigations --> Jump with default movement key
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ctrl + a selects all.
noremap  <C-a>    ggVG<CR>

" Enable folding with the spacebar
nnoremap <space>  za

" Ctrl-l opens a shell.
nmap     <silent> <C-L> :terminal<CR>

"docstring for folded code
let      g:SimpylFold_docstring_preview=1

"standard indent
filetype indent   on

"PEP8 indent for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"indent for web stuff
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" (Compile) and run the code with F5
autocmd filetype python nnoremap <F5> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype ada nnoremap <F5> :w <bar> exec '!gnatmake '.shellescape('%').' && ./'.shellescape('%:r')<CR>

" Spell checking
" Auto enable spell checking
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell      spelllang=en
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell      spelllang=en
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell      spelllang=en
au BufNewFile,BufRead,BufEnter   *.tex     setlocal spell      spelllang=en
au BufNewFile,BufRead,BufEnter   *README*  setlocal spell      spelllang=en
" Set spelllang to "de" with <leader>d
:map <leader>d :setlocal spell spelllang=de<CR>
" Set spelllang to "en" with <leader>e
:map <leader>e :setlocal spell spelllang=en<CR>

" Regenerate spell (spl) filles upon startup if
" the .add file has been modified
for d in glob('~/.vim/spell/*.add', 1, 1)
    if filereadable(d) && (!filereadable(d . '.spl') || getftime(d) > getftime(d . '.spl'))
        exec 'mkspell! ' . fnameescape(d)
    endif
endfor

" Tab completion for vim commands starting with ':'
set wildmenu
set wildmode=longest:full,full " Display Vim command mode autocompletion list

" easy insert chars multiple times
function! Repeat()
    let times = input("Count: ")
    let char  = input("Char: ")
    exe ":normal a" . repeat(char, times)
endfunction
" Use it as a command
command! -nargs=* Repeat call Repeat()
