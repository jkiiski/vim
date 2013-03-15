execute pathogen#infect()

colorscheme solarized
syntax on
set background=dark
set shiftwidth=4
set tabstop=4
set noexpandtab
set colorcolumn=80
set t_Co=256
set hlsearch
set incsearch
set nu
set listchars=tab:\ \ ,trail:·
set list

" generic mapping
nmap <F12> :bdelete<CR>

" cscope
set cscopetag
set csto=0

if filereadable("cscope.out")
	cs add cscope.out
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif

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

" gitgutter
highlight clear SignColumn