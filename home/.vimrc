" -------------------
" 色の設定
" -------------------
syntax on

highlight LineNr ctermfg=darkyellow    " 行番号
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " 特殊記号

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" タブ幅
set ts=2 sw=2
set softtabstop=2
set expandtab

"常にステータス行を表示
set laststatus=2
"if(){}などのインデント
set cindent
"検索時にヒット部位の色を変更
set hlsearch
"検索時にインクリメンタルサーチを行う
set incsearch
set showmode


" マウスモード有効

" -------------------
" 日本語の設定
" -------------------
set termencoding=utf-8
set encoding=japan
set fileencodings=utf-8
set fenc=utf-8
set enc=utf-8

set autoindent
"#オートインデント
set number
"#行番号表示
set incsearch
"#インクリメンタルサーチ
set ignorecase
"#検索時に大文字小文字を無視
"set nohlsearch　#検索時にハイライト無効
set showmatch
"#対括弧の表示
set showmode
"#モード表示
set backspace=2
"#上行末尾の文字を1文字消去
set title
"#編集中のファイル名を表示
set ruler
"#ルーラーの表示
set tabstop=2
"#タブ文字数を2に
set shiftwidth=2
"#シフト移動幅
set expandtab
"#タブの代わりに空白文字挿入

"#前回終了したカーソル行に移動幅 
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


setlocal omnifunc=syntaxcomplete#Complete
call pathogen#infect()
