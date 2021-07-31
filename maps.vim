" --- Key Remapping
inoremap jk <ESC>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" --- Movement
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap ^ <NOP>
nnoremap $ <NOP>
nnoremap s <NOP>

" --- Split Navigations
nnoremap <C-V> :vnew<SPACE>
nnoremap <C-Bslash> :new<SPACE>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <RIGHT> :vertical resize -2<CR>
nnoremap <LEFT> :vertical resize +2<CR>
nnoremap <UP> :resize -2<CR>
nnoremap <DOWN> :resize +2<CR>

" --- Tabs
nnoremap <C-T> :tabnew<SPACE>
nnoremap <TAB> gt
nnoremap <S-TAB> gT
nnoremap <C-W> :bd<CR>

" --- Functions
nnoremap <leader>srp :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>, :noh<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <F5> :call ToggleColorScheme()<CR>
inoremap <F3> <C-R>=strftime("%b %d %Y")<CR>
nnoremap <silent> <leader>. @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
