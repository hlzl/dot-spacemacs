# dot-spacemacs
This is the repository of a personal spacemacs config file. It contains a fully functioning c/c++ development environment with autocompletion via ycmd and syntax checking.
<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [dot-spacemacs](#dot-spacemacs)
    - [Requirements](#requirements)
        - [Emacs26](#emacs26)
        - [Spacemacs](#spacemacs)
    - [Installation](#installation)
        - [YCMD](#ycmd)

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
# Spacemacs Cheatsheet
Originally written by @usrlocalts and updated further

## Useful Vim key bindings
### 1. Movement

- `0`  - beginning of line
- `^`  - beginning of non-whitespace
- `$`  - end of line
- `9j` - move down 9 lines
- `w`  - move forward by word
- `b`  - move backward by word
- `gg` - first line
- `G`  - last line
- `Ctrl u`  - up half page
- `Ctrl d`  - down half page
- `f/` - move forward to first "/" character
- `t/` - move forward right before the first "/" character
- `;` - repeat that command again
- `H` - head of the screen
- `M` - middle of the screen
- `L` - last of the screen
- `}` - move forward by paragraph or block
- `{` - move backwards by paragraph or block
- `*` - search for word under the cursor
- `n` - search again forward
- `N` - search again backwards
- `#` - search backwards for word under cursor
- `/` - search forward
- `?` - search backward
- `%` - find matching brace, paren, etc
- `ma` - mark a line in a file with marker "a"
- ``a` - after moving around, go back to the exact position of marker "a"
- `'a` - after moving around, go back to line of marker "a"
- `:marks` - view all the marks
- `''` - go to the last place you were

### 2. Editing

- `x`  - delete char under cursor
- `X`  - delete char before cursor
- `A`  - add to end of line
- `I`  - insert at the beginning of the line
- `dd` - delete line
- `D`  - delete from cursor to end of line
- `di'` - delete text inside single quotes
- `yy` - copy line
- `Y`  - copy from cursor to end of line
- `cc` - change line
- `C`  - change from cursor to end of line
- `cit` - change text inside html tag
- `ci'` - change text inside single quotes
- `ci{` - change text inside curly brackets
- `ci...` - etc
- `p` - paste after cursor
- `P` - paste before cursor
- `o` - add line below
- `O` - add line above
- `.` - repeat last comment
- `r` - replace character
- `R` - replace. (overwrite) (good for columns of text)
- `J` - join line (cursor can be anywhere on line)

### 3. Visual mode

- `v` - visual char mode
- `V` - visual line mode
- `Ctrl v` - block visual mode

## Key Mappings

* `SPC - SPC` (emacs mode)
* `:` (VIM mode)

In the following:
* M = Alt
* C = Ctrl

- `SPC q q` - quit
- `SPC w /`  - split window vertically
- `SPC w`   - split window horizontally
- `SPC 1`   - switch to window 1
- `SPC 2`   - switch to window 2
- `SPC w c` - delete current window
- `SPC TAB` - switch to previous buffer
- `SPC b b` - switch buffers
- `SPC f f` - find a file
- `SPC f s` - save a file (:w also works)
- `SPC p p` - open project
- `SPC p h` - find a file in current project
- `SPC b d` - kill current buffer
- `SPC b M` - move buffer to another window
- `SPC v`   - enter expand-region mode
- `SPC b b` - Helm mini; lists buffers & recent files
  - `CTRL - SPC` - Mark Items
  - `CTRL z` - Actions
- `SPC b B` - ibuffer
- `SPC f f` - open files
  - `CTRL h` - up a folder
  - `CTRL l` - open a folder
  - `CTRL j` - up
  - `CTRL k` - down
- `SPC p f` - opens root of project
- `SPC p p` - opens projects
- `SPC /` - searches through project
- `SPC s s` - search in a file
- `SPC s l` - find all function definitons in a file
- `SPC v` - expand region
- `SPC V` - contract region
- `s (` - put parens around a region
- `SPC s e` - multiple cursors
  - `n` - jump
  - `N` - jump
- `SPC h d` - help describe
- `SPC h d f` - help describe functions
- `SPC h d v` - help describe variables
- `SPC f e h` - help
- `ALT /` - snippet completion
- `SPC t s` - syntax checking
- `SPC e` - syntax checking options
- `SPC a r` - ranger
- `SPC a d` - deer

## Unimpaired

- `[e` - Move line up
- `]e` - Move line down
- `[SPACE` - Insert space above
- `]SPACE` - Insert space below
- `[p` - Paste above current line
- `]p` - Paste below current line

## Find/Replace

- `Alt %`	- query-replace; active region, or cursor point to end	interactive find/replace
  - `y` - do the replacement.
  - `n` - skip
  - `!` - do this and all remaining replacements without asking.
  - `Ctrl g` - cancel.

## Git

- `SPC b`  open a magit blame
- `SPC B`	quit magit blame
- `SPC c`	commit changes
- `SPC C`	checkout branches
- `SPC d`	show diff prompt
- `SPC D`	show diff against current head
- `SPC e`	show ediff comparison
- `SPC E`	show ediff against current head
- `SPC f`	show fetch prompt
- `SPC F`	show pull prompt
- `SPC H c`	clear highlights
- `SPC H h`	highlight regions by age of commits
- `SPC H t`	highlight regions by last updated time
- `SPC i`	git init a given directory
- `SPC I`	open helm-gitignore
- `SPC l`	open a magit log
- `SPC L`	display the log for a file
- `SPC P`	show push prompt
- `SPC s`	open a magit status window
- `SPC S`	stage current file
- `SPC m`	display the last commit message of the current line
- `SPC t`	launch the git time machine
- `SPC U`	unstage current file

Highlight by age of commit or last update time is provided by smeargle.
Git time machine is provided by git-timemachine.
Git last commit message per line is provided by git-messenger.

### 1. Magit

Spacemacs uses magit to manage Git repositories.

To open a status buffer, type in a buffer of a Git repository: `SPC s`

Spacemacs uses evil-magit for key bindings in magit buffers (unless your editing style is set to emacs, in which case you get the default magit bindings), which are the standard magit key bindings with some minimal changes to make them comfortable for evil users.

Here are the often used bindings inside a status buffer:

Magit allows you to stage specific lines by selecting them in a diff and hitting s to stage. Due to inconsistencies between Vim and Emacs editing styles, if you enter visual line state with V, you will stage one more line than intended. To work around this, you can use v instead (since Magit only stages whole lines, in any case).

### 2. Commit Message Editing Buffer

In a commit message buffer press ~,c~ (if dotspacemacs-major-mode-leader-key is ~,~) or C-c C-c to commit the changes with the entered message. Pressing ~,a~ or C-c C-k will discard the commit message.

### 3. Interactive Rebase Buffer

Key Binding	Description
c or p	pick
e	edit
f	fixup
j	go down
gj	move line down
k	go up
gk	move line up
d or x	kill line
r	reword
s	squash
u	undo
y	insert
!	execute

### 4. Quick guide for recurring use cases in Magit

Amend a commit:
`l l` - open log buffer
`c a` - amend commit
`~,c~` or `C-c C-c` to submit the changes

Squash last commit:
`l l` - open log buffer
`r e` on the second to last commit, it opens the rebase buffer
`j` to put point on last commit
`s` to squash it
`~,c~` or `C-c C-c` to continue to the commit message buffer
`~,c~` or `C-c C-c` again when you have finished to edit the commit message

Force push a squashed commit:
in the status buffer you should see the new commit unpushed and the old commit unpulled
P -f P for force a push (beware usually it is not recommended to rewrite the history of a public repository, but if you are sure that you are the only one to work on a repository it is ok - i.e. in your fork).

Add upstream remote (the parent repository you have forked):
M to open the remote popup
a to add a remote, type the name (i.e. upstream) and the URL
Pull changes from upstream (the parent repository you have forked) and push:
F -r C-u F and choose upstream or the name you gave to it
P P to push the commit to origin

### 5. Time Machine

git-timemachine allows to quickly browse the commits of the current buffer.

Key Binding	Description
- `SPC t`	start git timemachine and initiate micro-state
- `c`	show current commit
- `n`	show next commit
- `N`	show previous commit
- `p`	show previous commit
- `q`	leave micro-state and git timemachine
- `Y`	copy current commit hash
