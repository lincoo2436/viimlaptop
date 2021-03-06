syntax on "自动语法高亮
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
set nu              " 显示行号  
set guifont=Courier_New:h10:cANSI   " 设置字体  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set mouse=a
set relativenumber  " 设置相对行号
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set foldenable      " 允许折叠  
set foldmethod=marker   " 缩进折叠  
set background=dark "背景使用黑色 
set encoding=utf-8
" 设置配色方案
if has('gui_running')
	set background=dark
	colorscheme desert
else
	colorscheme PaperColor
endif
" 设置python的版本
set pyxversion=3
"leader config
let mapleader =" "
nmap <leader>e :vsplit<CR>
map <leader>qq :q<CR>
nmap <leader>f :FZF<CR>
nmap <leader>p "+p
vmap <leader>p "+p
vmap <leader>y "+y
nmap <leader>o 0v$"+y
nmap <leader>v :Vista ctags<CR>
map <LEADER>rc :e ~/.vimrc<CR>
""COC shortcut
"map <LEADER>l :CocList
map <LEADER>w :CocList yank<CR>
map <LEADER>u :bl<CR>
map <LEADER>i :bn<CR>
map <LEADER>j 10j<CR>
map <LEADER>k 10k<CR>
"map <LEADER>b :CocList --top maps<CR>
map <LEADER>s :CocCommand translator.popup<CR>
"删除特殊符号和空行
map <LEADER>qa :g/^\s*$/d<CR>
map <LEADER>qm :%s/^M//gg<CR>
map <LEADER>qn :%s/\n//gg<CR>
nmap <leader>qd gg=G
vmap <leader>qc vg_
map <leader>ms <ESC>/<--><CR>:nohlsearch<CR>c4l
map <leader>mm <ESC>a <--><ESC>
"-----
"浮动窗口 
""floaterm key set
let g:floaterm_keymap_toggle = '<Leader>0'
let g:floaterm_keymap_new    = '<F2>'
"打开历史文件 
nmap <leader>h :Startify<CR>
"leader config-------
"其他快捷键
"" 前后标签
nmap tu :tabnew<CR>
nmap tn :+tabnext<CR>
nmap tp :-tabnext<CR>
nmap tbn :bnext<CR>
nmap tbp :bprevious<CR>
"调整窗口大小
nmap <down> :resize+3<CR>
nmap <up> :resize-3<CR>
nmap <right> :vertical resize-3<CR>
nmap <left> :vertical resize+3<CR>
nmap gt vg_ 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8"
set autowrite
set cursorline              " 突出显示当前行
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldcolumn=0
filetype plugin on 
""windows manager
" Use <space> + new arrow keys for moving the cursor around windows
"map <LEADER>w <C-w>w
"map <LEADER>u <C-w>k
"map <LEADER>e <C-w>j
"map <LEADER>n <C-w>h
"map <LEADER>i <C-w>l
""map <LEADER>r <C-w>r
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map se :set splitbelow<CR>:split<CR>
map sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map si :set splitright<CR>:vsplit<CR>
" 去掉输入错误的提示声音
set noeb
" :在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 历史记录数
set history=500
"用浅色高亮当前行"
autocmd InsertEnter * se nocul
autocmd InsertLeave * se cul
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"On-demand loading im plugged
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggler' }
Plug 'scrooloose/nerdcommenter'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vista.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'Neur1n/neuims', {'on': 'IMSToggle'}
Plug 'gcmt/wildfire.vim'
" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'
Plug 'tmhedberg/SimpylFold'
Plug 'mg979/vim-visual-multi'
Plug 'vim-voom/voom'
" 文件浏览器显示好看的图标
Plug 'ryanoasis/vim-devicons'
" 对图标进行美化
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'godlygeek/tabular'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'gabrielelana/vim-markdown'
"Plug  'Valloric/YouCompleteMe'
Plug 'iamcco/markdown-preview.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
"Plug 'kevinw/pyflakes-vim'
"Plug 'shougo/neocomplete.vim'
"Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'jszakmeister/markdown2ctags'
"Plug 'shougo/unite.vim'
Plug 'easymotion/vim-easymotion'
Plug 'puremourning/vimspector', { 'do': './install_gadget.py --enable-python --enable-go --enable-bash'}
"Plug 'vimwiki/vimwiki'
"Plug 'rbgrouleff/bclose.vim'
"Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"'Plug 'ncm2/ncm2-jedi'
"Plug 'roxma/nvim-yarp'
"'Plug 'ncm2/ncm2-markdown-subscope'
" Track the engine.
"Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'liuchengxu/graphviz.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" the framework
"Plug 'roxma/nvim-completion-manager'
"Plug 'prabirshrestha/asyncomplete.vim'
" the pretty dress
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'bling/vim-bufferline'
Plug 'h1mesuke/vim-alignta'
" Bookmarks
Plug 'kshenoy/vim-signature'
"undo tree
Plug 'mbbill/undotree/'
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()
""映射快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
""快速添加空行 [+空格，]+空格
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
"vg_选择到结尾但是不包含最后一个字符
nmap <C-f> :CocCommand explorer <CR>
"nmap <C-f> :NERDTreeToggle<CR>
"set laststatus=2 
function! Buf_total_num()
	return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
function! File_size(f)
	let l:size = getfsize(expand(a:f))
	if l:size == 0 || l:size == -1 || l:size == -2
		return ''
	endif
	if l:size < 1024
		return l:size.' bytes'
	elseif l:size < 1024*1024
		return printf('%.1f', l:size/1024.0).'k'
	elseif l:size < 1024*1024*1024
		return printf('%.1f', l:size/1024.0/1024.0) . 'm'
	else
		return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
	endif
endfunction

set statusline=%<%1*[B-%n]%*
" TOT is an abbreviation for total
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{File_size(@%)}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
set statusline+=%6*\ %m%r%y\ %*
set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
set statusline+=%8*\ %P\ %*
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)  
" default bg for statusline is 236 in space-vim-dark
hi User1 cterm=bold ctermfg=232 ctermbg=179
hi User2 cterm=None ctermfg=214 ctermbg=242
hi User3 cterm=None ctermfg=251 ctermbg=240
hi User4 cterm=bold ctermfg=169 ctermbg=239
hi User5 cterm=None ctermfg=208 ctermbg=238
hi User6 cterm=None ctermfg=246 ctermbg=237
hi User7 cterm=None ctermfg=250 ctermbg=238
hi User8 cterm=None ctermfg=249 ctermbg=240
let g:mkdp_path_to_chrome = "chromium"
" path to the chrome or the command to open chrome(or other modern browsers)
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }

" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_right=1
map <F7> :TagbarToggle<CR>
" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"let g:syntastic_python_checkers = ['flake8']
let g:python3_host_prog = '/usr/bin/python3'

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Define mappings
nnoremap <F5> :UndotreeToggle<cr>
" ===
" === CtrlP
" ===
map <C-p> :CtrlP<CR>
" ===
" === CtrlP
" ===
map <C-p> :CtrlP<CR>
" ===
" === vim-signiture
" ===
let g:SignatureMap = {
			\ 'Leader'             :  "m",
			\ 'PlaceNextMark'      :  "m,",
			\ 'ToggleMarkAtLine'   :  "m.",
			\ 'PurgeMarksAtLine'   :  "dm-",
			\ 'DeleteMark'         :  "dm",
			\ 'PurgeMarks'         :  "dm/",
			\ 'PurgeMarkers'       :  "dm?",
			\ 'GotoNextLineAlpha'  :  "m<LEADER>",
			\ 'GotoPrevLineAlpha'  :  "",
			\ 'GotoNextSpotAlpha'  :  "m<LEADER>",
			\ 'GotoPrevSpotAlpha'  :  "",
			\ 'GotoNextLineByPos'  :  "",
			\ 'GotoPrevLineByPos'  :  "",
			\ 'GotoNextSpotByPos'  :  "mn",
			\ 'GotoPrevSpotByPos'  :  "mp",
			\ 'GotoNextMarker'     :  "",
			\ 'GotoPrevMarker'     :  "",
			\ 'GotoNextMarkerAny'  :  "",
			\ 'GotoPrevMarkerAny'  :  "",
			\ 'ListLocalMarks'     :  "m/",
			\ 'ListLocalMarkers'   :  "m?"
			\ }


" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig
" ranger set
let g:ranger_map_keys = 0
map <leader>n :Ranger<CR> 
"" coc-snippets set
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-grave> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-w>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-m>'

" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
"" coc-highlight set
autocmd CursorHold * silent call CocActionAsync('highlight')
"" coc-fzf config
nmap <Leader>g [fzf-p]
xmap <Leader>g [fzf-p]

nmap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nmap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nmap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nmap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nmap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nmap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>"{{{
nmap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>"}}}
nmap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nmap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nmap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nmap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nmap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>

" markdown2ctags config
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
			\ 'ctagstype': 'markdown',
			\ 'ctagsbin' : 'markdown2ctags',
			\ 'ctagsargs' : '-f - --sort=yes --sro=»',
			\ 'kinds' : [
			\ 's:sections',
			\ 'i:images'
			\ ],
			\ 'sro' : '»',
			\ 'kind2scope' : {
			\ 's' : 'section',
			\ },
			\ 'sort': 0,
			\ }
""设定文件类型
au BufRead,BufNewFile *.md set filetype=markdown

function! Py_run() 
	execute "new ~/dwmscript/py.txt"
	execute "normal<CR>"
	execute "normal dG"
	execute ":r !python ~/dwmscript/PyModle.py"
	execute "normal<CR>"
endfunction 
:nmap <F6> :w! ~/dwmscript/PyModle.py<CR>:call Py_run()<CR><CR>

function! Sh_run() 
	execute "new ~/dwmscript/sh.txt"
	execute "normal<CR>"
	execute "normal dG"
	execute ":r !bash ~/dwmscript/ShModle.sh"
	execute "normal<CR>"
endfunction 
:nmap <F7> :w! ~/dwmscript/ShModle.sh<CR>:call Sh_run()<CR><CR>
"map <Leader> <Plug>(easymotion-prefix)
""打开文件时恢复光标位置
autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
"vimspector设置 From CW
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad
let g:loaded_table_mode = 1
let g:table_mode_corner='|'
let g:neuims = {
			\ 'im': 'Japenese (JP)',
			\ 'status': 0,
			\ 'keyboards': {
			\   'Japenese (JP)': 'xkb:jp::jpn',
			\   'Rime': 'rime',
			\ },
			\ }

"" coc-nvim config
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif


" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use <c-m> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"" coc-nvim extensions 

let g:coc_global_extensions =[
	\ 'coc-yank',
	\ 'coc-word',
	\ 'coc-translator',
	\ 'coc-snippets',
	\ 'coc-highlight',
	\ 'coc-fzf-preview',
	\ 'coc-floaterm',
	\ 'coc-actions',
	\ 'coc-tsserver',
	\ 'coc-sh',
	\ 'coc-python',
	\ 'coc-markmap',
	\ 'coc-json',
	\ 'coc-html',
	\ 'coc-go',
	\ 'coc-marketplace',
	\ 'coc-vimlsp']
"autocmd BufNewFile *.md *.txt exec ":set nospell"
""whichkey config
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
"取消markdown插件的折叠
let g:vim_markdown_folding_disabled = 1
