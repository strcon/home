syntax on
if $TERM == 'alacritty'
	colorscheme default
else
	colorscheme industry

	hi CursorLine ctermfg=magenta cterm=NONE
	hi Error ctermfg=white ctermbg=red cterm=bold
	hi ErrorMsg ctermfg=white ctermbg=red cterm=bold
	hi Special ctermfg=white cterm=bold
	hi MatchParen ctermfg=black ctermbg=white cterm=NONE
	hi EndOfBuffer ctermfg=black ctermbg=black
	hi StatusLine ctermfg=magenta ctermbg=black cterm=bold
	hi StatusLineNC ctermfg=white ctermbg=black cterm=bold
	hi VertSplit ctermfg=white ctermbg=black cterm=NONE
endif

set nu rnu
set cursorline
set ea

set laststatus=2
set statusline=%t\ %m\ %r\ [%l/%L]\ %c\ %=%{%getcwd()%}

inoremap jj <Esc>
vnoremap mm <Esc>
nnoremap <Space> <C-w>
nnoremap <Space>v <C-w>v<C-w>l
nnoremap <Space>s <C-w>s<C-w>j
