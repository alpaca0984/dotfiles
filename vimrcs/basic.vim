" encoding -----------------------------------------
set termencoding=utf-8
set encoding=utf-8                               " システムエンコードの値を入れる
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp " encodingに指定しなかった文字コードを入れる

" file----------------------
set autoread                        " 更新時自動再読み込み
set hidden                          " 編集中でも他のファイルを開けるようにする
" autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を除去する

" バックアップ/スワップファイルを作らない------
set nowritebackup
set nobackup
set noswapfile

" キー操作---------------------------
set backspace=indent,eol,start        " バックスペースで特殊記号も削除可能に
set whichwrap=b,s,h,l,<,>,[,]         " カーソルを行頭、行末で止まらないようにする
set expandtab                         " タブをスペースに置き換える
set tabstop=2                         " タブ文字を画面上で何文字分に展開するか
set softtabstop=0                     " タブキー押し下げ時の空白の数。0ならtabstopと同じ
source $VIMRUNTIME/macros/matchit.vim " 複数文字の対応カッコに%でジャンプ

" インデント-----------------------
set autoindent   " 自動インデント
set shiftwidth=2 " autoindent時に挿入されるインデントの幅
set shiftround   " インデントをshiftwidthの値の倍数に丸める
set smartindent  " 新しい行を開始した時にインデントを現在の行と同じにする

" Complement Command -------------------
set wildmenu           " コマンド補完を強化
set wildmode=list:full " リスト表示，最長マッチ

" Search -------------------------------
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト

" View ---------------------------------
set showmatch        " 括弧の対応をハイライト
set showcmd          " 入力中のコマンドを表示
set showmode         " 現在のモードを表示
set number           " 行番号表示
set wrap             " 画面幅で折り返す
set list             " 不可視文字表示
set listchars=tab:>\ " 不可視文字の表示方法
set notitle          " タイトル書き換えない
set scrolloff=5      " 行送り
set display=uhex     " 印字不可能文字を16進数で表示

" Statusline ---------------------------
set laststatus=2
