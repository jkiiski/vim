execute pathogen#infect()

" colorscheme solarized
syntax on
filetype plugin on
set background=dark
set smartindent
" set relativenumber
set shiftwidth=8
set tabstop=8
set noexpandtab
set colorcolumn=80
set t_Co=256
set hlsearch
set incsearch
set nu
set listchars=tab:\ \ ,trail:·
set list
set modeline
set clipboard=unnamedplus
set smartcase
set ignorecase
set mouse=a
set formatoptions+=j

highlight ColorColumn term=reverse ctermbg=1 guibg=LightRed
highlight SpellBad cterm=underline
set t_Cs=

set undodir=~/local/tmp
set undofile

" generic mapping
nmap <F5> :bp<CR>
nmap <F6> :bn<CR>
nmap <F12> :bprevious<CR>:bdelete #<CR>

" cscope
set cscopetag
set csto=0
set cst
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-j> :cp<CR>
nmap <C-k> :cn<CR>
set foldmethod=indent
set foldlevel=99

if filereadable("cscope.out")
	cs add cscope.out
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif

nmap <F11> :!cscope -qRb<CR>

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" fugitive / diff
nmap <Leader>ga :Gwrite<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gg :diffget<CR>
nmap <Leader>gp :diffput<CR>

set makeprg=make\ -j8
nmap <F9> :make!<CR>
nmap <F3> :sh<CR>

nmap <F2> :NERDTreeToggle<CR>
" gitgutter
highlight clear SignColumn

runtime! ftplugin/man.vim
set statusline=%F\ 
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%=\ line:\ %l\ col:\ %v\ 
set laststatus=2

match ErrorMsg '\%>120v.\+'
match ErrorMsg '\s\+$'
