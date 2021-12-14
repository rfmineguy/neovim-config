" $HOME/.vimrc

"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""

call plug#begin('~/.nvim/plugged')

"   This is the nicer bar at the bottom of neovim
Plug 'itchyny/lightline.vim'

"   Dracula colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

"   COC Autocomplete Engine
"  Plug 'neoclide/coc.nvim', { 'branch' : 'release' }

"   Autocomplete
Plug 'valloric/youcompleteme'

"   Bracket completion plugin
Plug 'raimondi/delimitmate'

"   File browser
"           currently replaced by fzf
"Plug 'scrooloose/nerdtree'

"   Assembly (nasm) syntax highlighting
Plug 'iosmanthus/vim-nasm'

"   GLSL support
Plug 'tikhomirov/vim-glsl'

"   Word highlighting  
"     - underlines all instances of the currently highlighted word
Plug 'itchyny/vim-cursorword'

"   Fuzzy file finder '\f'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"   Ctags generator vim
Plug 'szw/vim-tags'

Plug 'nvie/vim-togglemouse'
call plug#end()

"""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""
set expandtab				"Spaces instead of tabs
set smarttab				"Smart tabbing
set tabstop=4				"One tab == 4 spaces
set shiftwidth=4			"One tab == 4 spaces
set number                  "Enable line numbers
set noswapfile              "Disable swapfile support
" syntax on
set foldmethod=syntax       "Fold method
set foldnestmax=10          "Max fold nesting level
set nofoldenable            "Sets to unfolded by default
"set foldlevel=2
set mouse=a                 "Enables mouse support
set nowrap                  "Disable auto wrap on load
set formatoptions-=t        "Disable auto wrap when typing
let g:pymode_python='python3'

"""""""""""""""""""""""""""""
" Coc Config
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Vimspector Config
"""""""""""""""""""""""""""""
let g:vimspector_enable_mappings='HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch
nmap <leader>do :VimspectorShowOutput

"""""""""""""""""""""""""""""
" Remap Keys
"""""""""""""""""""""""""""""
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"call CocAction('jumpDefinition', 'drop')
"  jumps to the definition of the currently hightlighted function
nmap <leader>g :call CocAction('jumpDefinition', 'vsp')<CR>

nnoremap <leader>f :Files .<CR>

" nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

"""""""""""""""""""""""""""""
" Colors / Theming
"""""""""""""""""""""""""""""
colorscheme dracula

"""""""""""""""""""""""""""""
" Splits / Tabbed Files
"""""""""""""""""""""""""""""
set splitbelow splitright
			
" Remap split nav to CTRL + hjkl, not CTRL + w + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>
