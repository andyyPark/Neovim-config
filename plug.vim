if has("nvim")
    let g:plug_home = stdpath('config') . '/plugged'
endif

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'enter': 'tab split',
  \ 'ctrl-v': 'vsplit' }
let $FZF_DEFAULT_OPTS="--bind \"ctrl-n:preview-down,ctrl-p:preview-up\""
let g:fzf_buffers_jump = 1
let g:fzf_nvim_statusline = 0
let g:fzf_layout = { 'down': '~40%' }
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', '~/.config/nvim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
nnoremap <silent> <C-F> :Files<CR>
nnoremap <silent> <C-B> :BLines<CR>
nnoremap <silent> <C-G> :Rg<CR>

Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dracula/vim',{'as':'dracula'}

Plug 'junegunn/seoul256.vim'
let g:seoul256_background = 235

Plug 'mattn/emmet-vim'
let g:user_emmet_mode='n'
let g:user_emmet_leader_key = '<C-Z>'

Plug 'tpope/vim-fugitive'
nnoremap gs :Git<CR>

Plug 'tpope/vim-commentary'
nnoremap <C-C> :Commentary<CR>
vnoremap <C-C> :Commentary<CR>

Plug 'jiangmiao/auto-pairs'
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'preservim/nerdtree'
nnoremap <C-N> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | else | NERDTree | endif
let g:NERDTreeNaturalSort = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowHidden = 1

Plug 'dense-analysis/ale'
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\}
let g:ale_fix_on_save = 1
let g:ale_python_flake8_options = '--max-line-length=88'

Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/completion-nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hoob3rt/lualine.nvim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'akinsho/toggleterm.nvim'
nnoremap <leader>tf <cmd>ToggleTerm direction=float<cr>

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

call plug#end()
