set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

Bundle 'git://github.com/jsx/jsx.vim.git'
Bundle 'scrooloose/nerdtree'

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set guifont="Source Code Pro"
hi Cursor ctermbg=black
hi Normal ctermbg=darkgray

"
" Change cursor shape in different modes
" 

    " Enable CursorLine
    set cursorline

    " Default Colors for CursorLine
    highlight  CursorLine ctermbg=235 ctermfg=None

    " Change Color when entering Insert Mode
    autocmd InsertEnter * highlight  CursorLine ctermbg=black ctermfg=None

    " Revert Color to default when leaving Insert Mode
    autocmd InsertLeave * highlight  CursorLine ctermbg=235 ctermfg=None

" Indentation

    set smartindent
    set tabstop=4
    set shiftwidth=4
    set expandtab

" Backspace behavior
    set backspace=indent,eol,start

"
" General settings
"

    " Decrease delay when switching between modes
    set timeoutlen=1000 ttimeoutlen=0
    let mapleader = ','
    colorscheme hybrid
    set background=dark

    set noswapfile

set conceallevel=2
let b:javascript_enable_domhtmlcss=1
let g:javascript_conceal=1

Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
"

" Bundle 'marijnh/tern_for_vim'
" Bundle 'maksimr/vim-jsbeautify'

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set sessionoptions+=winpos,resize

set completeopt-=preview

Bundle 'tomtom/tcomment_vim'
Bundle 'camelcasemotion'

set number
let NERDTreeShowLineNumbers=0

" Highlight problematic whitespace
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 

Bundle 'bling/vim-airline'
    set laststatus=2
    let g:airline_theme='powerlineish'
    let g:airline_powerline_fonts=1

Bundle 'tpope/vim-fugitive'

" Open NERDTree in new tabs and windows if no command line args set
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd BufEnter * if !argc() | NERDTreeMirror | endif
Bundle 'jistr/vim-nerdtree-tabs'

let NERDTreeShowBookmarks=1

map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" UndoTree
Bundle 'mbbill/undotree'
  nnoremap <Leader>u :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1

highlight LineNr guifg=#666666
set cursorline
set relativenumber

set hlsearch                    " Highlight search terms

" Unset last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

nmap <S-h> <C-w>W
nmap <S-l> <C-w>w

syntax on

" Brackets highlighting
hi MatchParen cterm=bold ctermbg=none ctermfg=red

set clipboard=unnamedplus

" C++
    nnoremap <F4> :make!<cr>
    set exrc
    set secure
    nnoremap <leader>jd :YcmCompleter GoTo<CR> 
