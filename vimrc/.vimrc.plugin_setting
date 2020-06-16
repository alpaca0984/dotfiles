"--------------------------
" Dark powered asynchronous completion framework for neovim/Vim8
"   https://github.com/Shougo/deoplete.nvim
"--------------------------
let g:deoplete#enable_at_startup = 1


"--------------------------
" neo-snippet plugin contains neocomplcache snippets source
"   https://github.com/Shougo/deoplete.nvim
"--------------------------
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"--------------------------
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
"   https://github.com/airblade/vim-gitgutter
"--------------------------
" Key mappings
nnoremap <silent> ,gt :<C-u>GitGutterToggle<CR>
nnoremap <silent> ,gr :<C-u>GitGutterDisable<CR>:<C-u>GitGutterEnable<CR>
nnoremap <silent> ,gn :<C-u>GitGutterNextHunk<CR>
nnoremap <silent> ,gp :<C-u>GitGutterPrevHunk<CR>


"--------------------------
" A Vim plugin for visually displaying indent levels in code
"   https://github.com/nathanaelkane/vim-indent-guides
"--------------------------
" indent guides enabled by default
let g:indent_guides_enable_on_vim_startup=1
" which indent level to start showing guides from
let g:indent_guides_start_level=2
" the size of the indent guide
let g:indent_guides_guide_size = 1
" not the plugin automatically calculates the highlight colors
let g:indent_guides_auto_colors=0
" Colorize odd indents(adjust ctermbg's value)
"   - Color codes(http://cl.pocari.org/images/vim-256color.png)
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=235
" Colorize even indents
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=237


"--------------------------
" HTML5 omnicomplete and syntax
"   https://github.com/othree/html5.vim
"--------------------------
let g:html5_event_handler_attributes_complete = 1
let g:html5_rdfa_attributes_complete = 1
let g:html5_microdata_attributes_complete = 1
let g:html5_aria_attributes_complete = 1


"--------------------------
" Vim plugin for intensely orgasmic commenting
"   https://github.com/scrooloose/nerdcommenter
"--------------------------
" Turn the default mappings off
let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let NERDSpaceDelims = 1
" Toggle comment out, uncommented
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
" Toggle comment out multiple lines
nmap ,s <Plug>NERDCommenterSexy
vmap ,s <Plug>NERDCommenterSexy


"--------------------------
" A tree explorer plugin for vim.
"   https://github.com/scrooloose/nerdtree
"--------------------------
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


"--------------------------
" lean & mean status/tabline for vim that's light as air
"   https://github.com/vim-airline/vim-airline
"--------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"--------------------------
" Help folks to align text, eqns, declarations, tables, etc
"   https://github.com/vim-scripts/Align
"--------------------------
" For Japanese language. Determine a string's length accurately.
let g:Align_xstrlen=3

