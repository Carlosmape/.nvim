# My custom NeoVim configuration   
It also should work for Vim    
    
### What it does?
Configuration file has my own nvim customization. It contains some rules, a plugin manager and also some plugins ready to be installed.
   
##### Some added plugins
 - Vim-Plug (Plugin manager [See more](https://github.com/junegunn/vim-plug))  
 - NerdTree (Allows to see directory tree [See more](https://github.com/scrooloose/nerdtree-git-plugin))   
 - EasyMotion (Search and navigate using keyboard [See more](https://github.com/easymotion/vim-easymotion))
 - VimCompletesMe (Autocompletion plugin [See more](https://github.com/ackyshake/VimCompletesMe))
 - _Vim-GutenTags (Disabled)_ (Autogenerates tags files[See more](https://github.com/ludovicchabant/vim-gutentags))    
 - GruvBox (Colorscheme and themming plugin [See more](https://github.com/morhetz/gruvbox))
 - TMuxNavigator (Splitted window navigation plugin (just using common movement keys + <CTRL>) [See more](https://github.com/christoomey/vim-tmux-navigator))
 - LightLine (Statusline plugin [See more](https://github.com/itchyny/lightline.vim))
   - GitBranch (Git current branch for LightLine [See more](https://github.com/itchyny/vim-gitbranch))
 - ALE (Under testing. Not totally working. Highligthing PHP scripts in Linux... [See more](https://github.com/dense-analysis/ale))
 - CtrlP (Fuzzy File, Buffer and Tag Finder <CTRL>+p [See more](https://github.com/ctrlpvim/ctrlp.vim))
 - <Under construction... It will be more!>    

### How it looks?
![image](https://user-images.githubusercontent.com/5487555/139299081-a65cdc0b-261c-4412-a04a-cec806bc45e9.png)
    
### How do I install(?) or whatever
 1. This file should be placed on ~/.config/[nvim|vim]/init.vim   
 2. Install vim-plug plugin manager. [Know how](https://github.com/junegunn/vim-plug)   
 3. Once there, you should open nvim and install plugins as says vim-plug repo:   
    On command mode type `:PlugInstall`
 4. Enjoy :)!
     
### How do I use?   
Leader key is space bar (` `) This key is used to run custom mapping in Normal mode      
     
Mapped commands:     
| Custom command      | Does             |
|---------------------|------------------|
| `<Leader>` + `w` | Save file        |
| `<Leader>` + `q` | Quit current file|
| `<Leader>` + `nt`| Open NerdTree    |  
| `<Leader>` + `s` | Open EasyMotion  |
| `<Leader>` + `sw`| Open EasyMotion navigate in following words |
| `<Leader>` + `cs`| Toggles spell check [See more](https://neovim.io/doc/user/spell.html) |
| `<Leader>` + `sr`| Enters in 'search and replace' for the last searched word (`:%s//`+...) Must add text to replace and controller (...+`/gc` for global with confirmation) |
| `<Leader>` + `t` | Open a terminal splitted |
| `<Alt>` + `e`    | Will wrap autopairs (converts `()text` into `(text)` may be used with any enclosing bytes (`()`,`""`,`{}`,...)) |  
| `<Ctrl>` + `p`   | Search files in PWD by name |
| `<F5>`		   | Saves and execute current source file (`:w !%`). Should work for scripts (bash scripting, python, perl and so on...) |
| `<Tab>`          | At the end of current writting word, autocompletes hint |

Vim inherit commands [See more](https://neovim.io/doc/user/motion.html)(Motion commands should be used in Normal mode or pushing `<Alt>`+`<motion cmd>` in another mode)
Almost all motion commands allows you to insert a number before the command. For example write `5w` will move 5 words fordward:
| Moving Command  | Does                                   |
|------------------------------|----------------------------------------|
| `w`                          | To next word begin                     |
| `b`                          | To prev. word begin                    |
| `e`                          | To (current/next) word end             |  
| `G`                          | To last file line                      |
| `^`                          | To current line starting (non-blank) char |
| `$`                          | To current line end                    |
| `%`                          | In a bracket, parenthesis or similar, goes to its pair |
| `g` + `[moving cmd \| g]` | To `moving cmd` or file first line (samples: `g0` goes to char '0' in the current line) `g_` goes to last non-blank charachter of the line `gm` goes to the middle of the screen |
       
| Control commands              | Does                                                     |  
|-------------------------------|----------------------------------------------------------|  
| `<Esc>`                       | Enters in command mode                                   |  
| `i`                           | Enters in insert mode (at current cursor position). **Note** Uppercase will insert at the line beginning |  
| `a`                           | Enters in insert mode (append, just after current cursor position). **Note** Uppercase will append at the end of the line |  
| `o`                           | Opens a new line under cursor position and enters in insert mode. **Note** Uppercase will act backwards (new line will be inserted above) |
| `r` 						    | Replaces cursor text (if in visual mode). **Note** Uppercase will enter in replace mode (like insert but replacing all) |
| `c` + `[moving cmd \| c ]`    | Changes current cursor until `moving cmd` (or complete line). Does a `d` until `moving cmd` + `insert`. **Note** Uppercase to change from cursor til line end |
| `v`                           | Enters in visual mode (to select a piece of code). **Note** Uppercase will enter in VisualBlock mode |  
| `d` + `[moving cmd \| d ]`    | Deletes (cuts) from cursor to `moving cmd` (or complete line). In visual mode, deletes currently selected piece of code. **Note** Uppercase is the same to do `dd` or `d$` |   
| `.` 							| In normal mode, repeats last inserted text until `<CR>` |   
| `y` + `[moving cmd \| y ]` 	| In normal mode, yanks (copies) til `moving cmd` (or complete line). In visual mode, yanks selected piece of code. **Note** Uppercase is the same to do `yy` or `d$` |  
| `x`                        	| In visual mode, cuts selected piece of code. **Note** Uppercase will do it in backwards |  
| `p`                        	| Pastes clipboard content after current cursor position (if in visual mode and something is selected, then replace current selected content). **Note** Uppercase will act backwards |  
| `*\|#`                     	| Searches (like `/` cmd) current cursor word in entire file `n\|N` or `*\|#` |   
| `q` + `{letter}` 				| To record a macro. All commands done after record starts can be executed using `@` + {letter}. **Note** Indicates number of repetitions before executing a macro will do the macro many times |
| `m` + `{letter}` 				| Creates a Bookmark in the current line. Use `'{letter}` to move to a bookmark. **Note** Uppercase to define global bookmarks (Allows to move between files) |
