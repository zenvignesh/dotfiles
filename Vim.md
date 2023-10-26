# VIM frequently used commands:

- copy current word: yiw
- replace current word: vep

# Window handling:

- :o index.md - *Open up a file*
- :tabedit filename - *open up a file in tab mode*
- :gt - *backward tab*
- :gT - *forward tab*
- 2gt - *specific tab*
- vim -p file1 file2 file3 - *Open multiple files in tab mode*
- :tabdo :q - *Close all the tabs at once*
- :vsplit 
    - :only or :on - to close the vsplit window
- :vertical resize +2 or -2
- :split
- :resize -2
- :mksession filename.vim - *Saves the current session*
- :mksession! filename.vim - *Overwrites the file*
- : vim -S filename.vim
- :e - *reload file modified outside vim, alternate :edit*
- :edit! - *discard local changes and reload*

# Autocompletion 

- Ctrl+n - *auto completion*
- Ctrl+p - *auto completion backwards*
- Ctrl+x, Ctrl+l - for line auto completion 
- Ctrl+x, Ctrl+f - for files auto completion 

# File editing:

- Ctrl+v -> select -> i -> change -> Esc
- :set spell - *Enable spell checking in English*
- :set nospell - *Disable spell check*
- u - *Undo*
- : Ctrl+r - *redo*
- vertical select and editing
    - ctrl+v - to select the column of text
    - I to go into insert mode 
    - type space
    - press esc

# Screen Navigation:

- j - *down line*
- k - *up line*
- G - *bottom of the file*
- gg - *top of the file*
- 50gg - *50th line*
- H - *top of the line in the screen*
- M - *middle line in the screen*
- L - *last line on the screen*
- zz - *bring the current line into middle of the screen. Alternative (z.)*
- zt - *brings the current line to the top of the screen*
- zb -  *brings the current line to the bottom of the screen*
- Ctrl+e - *mode to end (screen)*
- Ctrl+y - *mode to top (screen)*
- 10 Crrl+e - *move to end 10 lines in screen*
- Ctrl+d - *moves the screen down half*
- Ctrl+u - *moves the screen top half*
- Ctrl+f - *move the screen down full screen*
- Ctrl+b - *move the screen up full screen*


# Line Navigation:

- 0 - *move to beginning of the line*
- $ - *move to end of the line* 
- ^ - *move to the first non blank char of the line*
- g - *move to the last non blank char of the line*
- 10% - *10% of the file*
- 90% - *90% of the file*
- e / E - *end of the word*
- b / B - *backward of the word*
- w / W - *forward of the word*
- m / M - *set marks*
- % - *match braces*
- :10 - *goto line no 10*

# Editing

- ciw - *change inner word*
- yiw - *copy inner word*
- viwp - *replace inner word with the copy buffer (second time)*
- viw"0p - *third time*
- = - *formate code*
- converting tabs to spaces
    - :set list - to see tabs
    - :set expandtab - to make it possible to replace tabs
    - :retab - to replace all tabs with spaces
    - :set nolist - to hide tabs
- autocomplete
    - ctrl + n or ctrl + p
- '. - jump to last edit line
- ; - perform the last action again
- ya[ - copy around the [
- ctrl+x;ctrl+f - file name browser
- Ctrl+o - jump to 
- Ctrl+i - jump to 
- :.!realpath % - to insert the path of the current file

## Editing with Registers

- Ctrl+r " - paste from default register (in the insert mode)
- Registers we can yank into are: a-z
- "ayiw - yank in word to register a
- "ap - put from register a
- Ctrl+r a - paste from register a
- Ctrl+r Ay - append and yank into register a


# Searching

- :vimgrep /unit8/g % 
- :vim /uint8/g %
- :cope 
- Ctrl+w, Ctrl+w
- :cnext
- :cprev
- :cfirst
- :clast
- [Find in files](https://vim.fandom.com/wiki/Find_in_files_within_Vim)
- [Searching in Vim](https://codeyarns.com/tech/2017-09-14-how-to-grep-in-vim.html#gsc.tab=0)
- / forward Searching
- ? backward Searching
- n search navigation forward
- N search Navigation backward
- ggn search Navigation to first Result
- Gn search Navigation to last Result
- * search word under cursor forward
- # search work under cursor backwrd
- g* search global work under the cursor forward
- g# search global work under the cursor backward
- :grep -rinw 'text' /c/vwos/work - searching recursively for a text
- f<char> - forward to perticular char
- F<char> - backward to perticular char
- ; - repeat the operation in forward direction
- , - repeat the operation in backward direction

# Search result colour scheme 

- hi Search cterm=NONE ctermfg=black ctermbg=yellow - we can use any color here

# Find and replace

- :%s/string1/string2/g - the whole file
- :s/string1/string2/g - the current line
- visual select by shift v line select- then :s/string1/string2/g
- visual select by ctrl v line select- then :s/string1/string2/g
- :'a,'bs/string1/string2/g - between marks
- :12,17s/string1/string2/g - between lines
- cw - change word
- ct( - change till (
- fn - jump the cursor to n
- ci" - change inside the "
- shfft D - delete the line
- shift 0 - to to start of the line
- shift $ - to to end of the line
- g shift uu - convert to upper case all of the line
- g shift uu - convert to lower case all of the line
- U - visually select and 'U' to upper case
- u - visually select and 'u' to lower case
- Visual select the text, then U for uppercase or u for lowercase. To swap all casing in a visual selection, press ~ (tilde). Without using a visual selection, gU<motion> will make the characters in motion uppercase, or use gu<motion> for lowercase.


# Buffer method

- :e filename - *Open a file for editing*
- :ls - *lists all the files which are in buffer*
- :b# - *Opens last file in buffer*
- :bufdo bwipeout - *Closes all the files which are opened in the buffer*
- :bw - *Closes the current file from buffer*
- :bd# - *Deletes a file from the buffer*

# File handling

- :w newfilename.c - Save as new file

# Command executing

- :!ls - execute a command within vim

# Macros

1. [Macros](https://www.redhat.com/sysadmin/use-vim-macros)
1. [regex](http://vimregex.com/)

## Vim Explore

1. d - to create a directory
1. % - to create a file

## Vim tips
1. [Best Vim Tips](https://vim.fandom.com/wiki/Best_Vim_Tips)

## G commands
- gg - go to top of the file
- G - go to end of the file
- gj, gk, gh, gl - go to up, down, left , right within the line of the screen if it is the long line
- gq - format the long line into the visually readable format.
- ga - to know the assci code of the char.
- gf - and <Ctrl-6> - navigate to the file and come back to the previous file.
- gi - go to last edit file location



# Vim advanced Features:

- Auto-Complete
- Buffers
- Recordings
- : norm
- : ! command
- Open files / URLs with gf / gx
- Encrypting files with :X
- AutoSource
- spell checking

# Refreshing the screen

- https://stackoverflow.com/questions/7078538/refresh-vim-buffer
- :redr - refreshes the screen by redrawing. When opening a URL by using 'gx' command the screen might go to blank. At that time we can use this command to refresh the screen. 


# Vim popup creation related documentaion

- https://vimhelp.org/popup.txt.html#popup_atcursor%28%29
- https://vi.stackexchange.com/questions/24462/what-are-the-new-popup-windows-in-vim-8-2
- https://learnvimscriptthehardway.stevelosh.com/chapters/19.html


# Getting the word under the cursor in Vim

- go to command line mode by pressing : and press Ctrl rw



# vim training 

- https://youtu.be/1alWK5ByNMc - Basic training

# Convert from Decimal to Hex

- visually select the required sting to convert, then type 'Esc', and ':', then type 'xxd'. Ex. '<,'>!xxd

# Open current directory via windows explorer within vim
- :!start .

# inclrement the number below the cursor
- Crtl+a

# decrement the number under the cursor
- Crtl+x

