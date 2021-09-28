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
TODO: place some screenshot here    
      
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
| `<Ctrl>` + `p`   | Search files in PWD by name |
| `<Tab>`          | At the end of current writting word, autocompletes hint |

Vim inherit commands:
| Moving Command (Normal mode) | Does                                   |
|------------------------------|----------------------------------------|
| `w`                          | To next word begin                     |
| `b`                          | To prev. word begin                    |
| `e`                          | To (current/next) word end             |  
| `G`                          | To last file line                      |
| `^`                          | To current line start                  |
| `$`                          | To current line end                    |
| `%`                          | In a bracket, parenthesis or similar, goes to its pair |
| `g` + `[moving cmd | g]` | To `moving cmd` or file first line |
       
| Control commands              | Does                                                     |  
|-------------------------------|----------------------------------------------------------|  
| `<Esc>`                       | Enters in command mode                                   |  
| `i`                           | Enters in insert mode (at current cursor position)       |  
| `a`                           | Enters in insert mode (append, just after current cursor position) |  
| `v`                           | Enters in visual mode (to select a piece of code)        |  
| `d` + `[moving cmd | d ]`     | Deletes (cuts) from cursor to `moving cmd` or complete line (if in visual mode, deletes currently selected word) |   
| `y`                           | In visual mode, yanks (copies) selected piece of code |  
| `x`                           | In visual mode, cuts selected piece of code |  
| `p`                           | Pastes clipboard content after current cursor position (if in visual mode and something is selected, then replace current selected content) |  
| `P`                           | Pastes clipboard content before current cursor position (if in visual mode, behaves as previous command) |  
| `*`                           | Searches (like `/` cmd) current cursor word in entire fil `n|N` or `*|#` |   


