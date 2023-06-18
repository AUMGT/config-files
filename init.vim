set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

let g:mapleader = " "
let g:rustc_path = $HOME."/.cargo/bin/rustc"
let g:rust_recommended_style = 1
let g:rustfmt_command = $HOME."/.cargo/bin/rustfmt"
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'raimondi/delimitmate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rust-lang/rust.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-commentary'
Plugin 'yorickpeterse/happy_hacking.vim'
Plugin 'ajmwagar/vim-deus'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'nanotech/jellybeans.vim'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'christophermca/meta5'
Plugin 'TheNiteCoder/mountaineer.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

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
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols                                                                                                                              
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = ''

filetype plugin indent on    " 

" NERDTree Config
autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Vim Commentary

" Vim Indent Lines config
let g:indent_guides_enable_on_vim_startup = 1

" Vim airline
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'

" Settings
set t_Co=256
set background=dark
set autoindent
set termguicolors
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set linebreak
set scrolloff=8
set sidescrolloff=4
set laststatus=2
set cursorline
set noerrorbells
set number
set relativenumber
set mouse=a
set title
set encoding=UTF-8
colorscheme mountaineer
" Keymaps
nnoremap <silent><leader>pv :NERDTreeFocus<CR>
nmap <leader>r :RustRun<CR>
nmap <leader>R :Crun<CR>
nmap <leader>n :bn<CR>
nmap <leader>l :ls<CR>
nmap <leader>bdd :bd<CR>
