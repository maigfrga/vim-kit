Vim reference commands
=======================

Movements
---------
**w** => Move cursor one word

**b** => Move cursor back one word

**%** => Move cursor to the matching bracket

**{** => Move to start of previous paragraph or code block

**}** => Move to end of next paragraph or code block

**Ctr-f** => Move forward one screenfull

**Ctr-b** => Move backforward one screenfull


Editing
--------

**:dw** => Delete word

**:u** => Undo last change

**Ctrl-r** => Redo last change


ctags
-----

**Ctrl-]** => Jump to tag

**Ctrl-t** => Jump back a level

**:tselect** => Open

**:tnext** => Go to next tag

**:tprev** => Go to previous tag

**:tags** => Show tag history

Generating *ctags* file for all Python files inside a directory:

    $ find . -name \*.py -print | xargs ctags

Generating *ctags* file for all files inside a directory:

    $ ctags -R .

Installing *exuberant-ctags* on Mac OS X:

    $ brew install ctags-exuberant

Tabs
----

**:tabnew** => New tab

**:gt** => Go to next tab

**:Gt** => Go to next tab


Folding
-------

**:za** => Open/close (toggle) a folded group of lines

**:zc** => Close a folded group of lines


Registers
---------

**:reg** => Show named registerd and its content

**"5p** ==> Paste content in register 5


Bookmarks
---------

**m'\<name\>** => Create a bookmark named *\<name\>*

**'\<name\>** => Go to *<name>* bookmark

**:marks** => Display all bookmarks

Grep
----

**:vimgrep /pattern/gj \*.py**: Search for *pattern* in all *.py* files and return all matches instead of just one per line and not jump to first match automatically

**:cw**: Open new buffer with all matches

Sessions
---------

**:mksession**: Create a new session using a file called *Session.vim*

**:mksession \<file\>**: Create a new session storing info. in *file*

**$ vim -S \<file\>**: Execute *vim* loading session from *file*

**:source \<file\>**: Loading session from *file* inside Vim

**:mksession !**: Overwrite an existing session

Selections
-----------

**Ctrl-v**: Visual block => Selecting columns

**Shift-v**: Visual line => Selecting lines

**v**: Visual mode => Selecting text using home row

**Ctrl-v** + **home_row** + **Shift-i** + **your_text** + **ESC-ESC**: Insert *your_text* in a column

Spell checking
--------------

**set spell spelllang=en_us**: Set English spelling for local buffer

**z=**: Suggestions for changing word

**]s**: Move the cursor to the next misspelled word

Saving
------

**:w !sudo tee %**: Save a file as *root* user

Undo
----

**:earlier 10m**: Go back 10 minutes

**:later 10m**: Go to a later text state as it was 10 minutes ago

*Branches*: If you undo something and make a new change then a new branch is
created

**g-**: Go to older text state through branches

**g+**: Go to newer text state through branches

Indentation
------------

**>**: Indent

**<**: Outdent

Grammar
-------

* Verbs:
    * **v**: Visual
    * **c**: Change
    * **d**: Delete
    * **y**: Copy

* Modifiers:
    * **i**: Inside
    * **a**: Around
    * **t**: till finds a character
    * **f**: find like till except including the char
    * **/**: search find a string/regex

* Text objects:
    * **w**: Word
    * **s**: Sentence
    * **p**: Paragraph
    * **b**: Block/parantheses

* Examples:
    * **vap**: Visual around paragraph => Visually select this paragraph
    * **ctM**: Change fill finds character *M* => Change everything from here to letter *M*

Windows
-------

* **:res +3**: Increase current window height by 3

* **:res -3**: Decrease current window height by 3

* **Ctrl-w <**: Decrease current window width by 1

* **Ctrl-w >**: Increase current window width by 1

Modeline
--------

You can add some lines at the top of your file for applying some Vim properties. For example,
if you want to use wrap text with 79 characteres per line, you should add the following lines
at the top of your text file:

    # vim:tw=79
    # vim:fo+=t

Misc
-----

**:so ~/.vimrc**: Reloading config without restarting

**U**: Transform selection to uppercase


Custom Map Commands
-------------------

**<F2>**: Save document

**<F3>**: tabnew

**<F4>**: split

**<F5>**: vsplit

**<C-S-p>**: paste from clipboard

**<C-x>** cut to clipboard

**<C-y>** copy to clipboard

**<S-Left>** previous tab

**<S-Right>** next tab
