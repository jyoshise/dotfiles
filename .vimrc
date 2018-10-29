"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/junichi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/junichi/.cache/dein')
  call dein#begin('/home/junichi/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/junichi/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-fugitive')


  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set t_Co=256
if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

colorscheme tender
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

    " Powerline系フォントを利用する
    set laststatus=2
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#whitespace#mixed_indent_algo = 1
    let g:airline_theme = 'deus'
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = '∄'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''


" 文字コードをutf-8に設定
"set encoding=utf-8
"scriptencoding utf-8

" 特殊文字の文字化けを修正する
"set ambiwidth=double

" 他OSで作成されたファイルに対応
set fileformats=unix,dos,mac

" 行番号を表示
set number

" バックスペースキーの有効化
set backspace=indent,eol,start

" tabをスペース2個分に
set tabstop=2

" 前の行のインデントを継続させる
set autoindent

" 自動的にインデントを行う 
set smartindent

" インデントする際のスペースの数
set shiftwidth=2

" タブを空白にに変換
set expandtab

" ハイライトを有効にする
set hlsearch

" 検索中に自動的にハイライトする
set incsearch

" 小文字で検索する際に、検索結果に大文字を含める
set ignorecase

" 検索文字列に、大文字と小文字が混在している場合に、区別して検索する。
set smartcase

" 検索が末尾まで終わると先頭に戻る
set wrapscan

" 現在の行に、下線を表示する
set cursorline

" cursorlineの色をクリア
hi clear CursorLine

" カーソル行のハイライト
highlight CursorLine ctermbg=Black
highlight Cursolline ctermfg=Blue

" （）を強調させる
set showmatch

" 自動的にIMEをオフにする
set iminsert=0
set imsearch=-1

" コマンドの補完を有効化
set wildmenu

" コマンドの履歴を1000件保存
set history=1000

" ペースト時のインデントを防止
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
  set paste
  return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
  endif

" ルーラー表示
set ruler

" manを有効
runtime ftplugin/man.vim


