syntax enable

set number    	      "turns on line numbers
set tabstop=2         "number of visual spaces per TAB
set softtabstop=2     "number of 
set expandtab	      "tabs are spaces
set showcmd           "show command in bottom bar
set cursorline        "highlight current line
set wildmenu	      "visual autocomplete for command menu
set lazyredraw	      "only redraw when needed
set showmatch         "matches [{("'``'")}]
set incsearch         "search as characters are entered
set hlsearch          "highlight search matches
set foldenable        "enable folding
set foldlevelstart=10    "open most folds by default
set foldmethod=indent "fold based on indent level
set backspace=2 " make backspace work like most other programs

"" NERDTree options
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1

"" ctrlp options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"" ctrlp custom ignore syntax
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"" ALE lint options
let g:ale_lint_on_text_changed=1

"" key mappings
map <C-p> :CtrlP<space>.<CR>
nnoremap <silent> <Space>v :NERDTreeFind<CR>
nnoremap <Space>f :NERDTreeToggle<Enter>
nnoremap ˚ ddkP
nnoremap ∆ ddp
imap jj <Esc>

"" wildignores for vimsearch
set wildignore+=*/node_modules/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"" call to pathogen infect
execute pathogen#infect()

