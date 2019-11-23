# dot-spacemacs
This is the repository of a personal spacemacs config file. It contains a fully functioning c/c++ development environment with autocompletion via ycmd and syntax checking.
<!-- markdown-toc start  Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

 [dot-spacemacs](#dot-spacemacs)
     [Requirements](#requirements)
         [Emacs26](#emacs26)
         [Spacemacs](#spacemacs)
     [Installation](#installation)
         [YCMD](#ycmd)

<!-- markdown-toc end -->

## Requirements
### Emacs26
To install emacs26:
```
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt install emacs26
```

### Spacemacs
```
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cd ~/.emacs.d
git checkout develop
git checkout 1299f262c
```

## Installation
To use this config file:
```
git clone https://github.com/hlzl/dot-spacemacs.git ~/.spacemacs.d

# Backup your ~/.spacemacs file if it already exits.
ln -s ~/path/to/dot-spacemacs/.spacemacs ~/.spacemacs -f

# Setup ycmd
cd ~/.spacemacs.d
./setup.sh
```

### YCMD
For cmake projects it is necessary to compile the projects with flag:
```
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON
```

## Spacemacs inside terminal
To use spacemacs inside your terminal, copy the `emacs.service` file from the `dot-spacemacs/.config` folder to
```bash
~/.config/systemd/user/emacs.service
```
Afterwards, run the following
```bash
systemctl enable --user emacs
systemctl start --user emacs
```
Finally, add these two lines to your `.bashrc` in your home directory
```bash
# Spacemacs inside terminal with proper colors
alias vi='emacsclient -t'
export TERM=xterm-256color
```

# Spacemacs Cheatsheet
For a proper introduction, check out the [documentation](https://www.spacemacs.org/doc/DOCUMENTATION.html).

## Useful Vim key bindings
### 1. Movement

 `0`   beginning of line
 `^`   beginning of non-whitespace
 `$`   end of line
 `9 j`  move down 9 lines
 `w`   move forward by word
 `b`   move backward by word
 `g g`  first line
 `G`   last line
 `CTRL u`   up half page
 `CTRL d`   down half page
 `f /`  move forward to first "/" character
 `t /`  move forward right before the first "/" character
 `;`  repeat that command again
 `H`  head of the screen
 `M`  middle of the screen
 `L`  last of the screen
 `}`  move forward by paragraph or block
 `{`  move backwards by paragraph or block
 `n`  search again forward
 `N`  search again backwards
 `#`  search backwards for word under cursor
 `/`  search forward
 `?`  search backward
 `%`  find matching brace, paren, etc
 `''`  go to the last place you were

### 2. Editing

 `x`   delete char under cursor
 `X`   delete char before cursor
 `A`   add to end of line
 `I`   insert at the beginning of the line
 `d d`  delete line
 `D`    delete from cursor to end of line
 `d i'`  delete text inside single quotes
 `y y`  copy line
 `Y`    copy from cursor to end of line
 `c c`  change line
 `C`    change from cursor to end of line
 `c i "`  change text inside single quotes
 `c i (`  change text inside brackets
 `c i {`  change text inside curly brackets
 `p`  paste after cursor
 `P`  paste before cursor
 `o`  add line below
 `O`  add line above
 `.`  repeat last comment
 `r`  replace character
 `R`  replace (overwrite) (good for columns of text)
 `J`  join line (cursor can be anywhere on line)

### 3. Modes
 `SPC SPC`  Emacs commands with Helm (`M-x` / `Alt-x`)
 `:`  Vim (ex-command)
 `CTRL z`  Wechseln zwischen Emacs und Vim Mode
 `v`  visual char mode
 `V`  visual line mode
 `CTRL v`  block visual mode

#### State  Default Color
normal  orange
> like the normal mode of Vim, used to execute and combine commands
insert  green
> like the insert mode of Vim, used to actually insert text
visual  gray
> like the visual mode of Vim, used to make text selection
motion  purple
> exclusive to Evil, used to navigate read only buffers
emacs  blue
> exclusive to Evil, using this state is like using a regular Emacs without Vim
replace  chocolate
> exclusive to Evil, overwrites the character under point instead of inserting a new one
hybrid  blue
> exclusive to Spacemacs, this is like the insert state except that all the emacs key bindings are available
evilified  light brown
> exclusive to Spacemacs, this is an emacs state modified to bring Vim navigation, selection and search.
lisp  pink
> exclusive to Spacemacs, used to navigate Lisp code and modify it (more info)
iedit  red
> exclusive to Spacemacs, used to navigate between multiple regions of text using iedit (more info)
iedit-insert  red
> exclusive to Spacemacs, used to replace multiple regions of text using iedit (more info)

## Key Mappings

 `SPC q q`  quit
 `SPC w /`   split window vertically
 `SPC w`    split window horizontally
 `SPC 1`    switch to window 1
 `SPC 2`    switch to window 2
 `SPC w c`  delete current window
 `SPC TAB`  switch to previous buffer
 `SPC b b`  switch buffers
 `SPC f f`  find a file
 `SPC f s`  save a file (:w also works)
 `SPC p p`  open project
 `SPC p h`  find a file in current project
 `SPC b d`  kill current buffer
 `SPC b M`  move buffer to another window
 `SPC v`    enter expand-region mode
 `SPC b b`  Helm mini; lists buffers & recent files
   `CTRL  SPC`  Mark Items
   `CTRL z`  Actions
 `SPC b B`  ibuffer
 `SPC f f`  open files
   `CTRL h`  up a folder
   `CTRL l`  open a folder
   `CTRL j`  up
   `CTRL k`  down
 `SPC p f`  opens root of project
 `SPC p p`  opens projects
 `SPC /`  searches through project
 `SPC s s`  search in a file
 `SPC s l`  find all function definitons in a file
 `SPC v`  expand region
 `SPC V`  contract region
 `s (`  put parens around a region
 `SPC s e`  multiple cursors
   `n`  jump
   `N`  jump
 `SPC h d`  help describe
 `SPC h d f`  help describe functions
 `SPC h d v`  help describe variables
 `SPC f e h`  help
 `ALT /`  snippet completion
 `SPC t s`  syntax checking
 `SPC e`  syntax checking options
 `SPC a r`  ranger
 `SPC a d`  deer

## Unimpaired

 `[e`  Move line up
 `]e`  Move line down
 `[SPACE`  Insert space above
 `]SPACE`  Insert space below
 `[p`  Paste above current line
 `]p`  Paste below current line

## Find/Replace
Emacs:
 `Alt %`	 query-replace; interactive find/replace
   `y`  do the replacement.
   `n`  skip
   `!`  do this and all remaining replacements without asking.
   `CTRL g`  cancel

Vim:
 `:%s/text/replacement/%g` - replace all instances of text with the replacement

## Magit
 `SPC g s`  Open Magit
 `Enter/Return`  Select
 `TAB`  Open/Close
 `q`  Go back
 `CTRL g`  Close
 `h`  Help
 `, k`  Cancel commit message
 `, ,`  Finish commit message
