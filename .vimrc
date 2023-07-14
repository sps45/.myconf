" Display line numbers
set number

" Mapping to create custom timestamp for journaling
" Ex. Sunday July 2, 2023
map <leader>D :put =strftime('%A %B %d, %Y // %I:%M%p')


" Mapping to create AM/PM timestamp
" Ex. 05:27pm
map <leader>T :put =strftime('%I:%M%p')


" Set the window's title, reflecting the file currently being edited
set title

" Enable spellchecking
" set spell

" Show ruler (cursor position)
set ruler

" Set text width to 72
set textwidth=74

" Set lines to always wrap
set wrap linebreak

" Reduce gitgutter difference checker update time a bit lower,
" per the dev's recommendation
set updatetime=100

" Enter git package X/X url tail to install using vim-plug
call plug#begin()
Plug 'ascii-boxes/boxes'
call plug#end()

" Set 'jj' to Esc when in insert mode
imap jj <Esc>
