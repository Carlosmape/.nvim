# My custom NeoVim configuration   
It also should work for Vim    
    
### What it does?
Configuration file has my own nvim customization. It contains some rules, a plugin manager and also some plugins ready to be installed.
   
##### Some added plugins
 - Vim-Plug (Plugin manager [See more](https://github.com/junegunn/vim-plug))  
 - NerdTree (Allows to see directory tree [See more](https://github.com/scrooloose/nerdtree-git-plugin))   
 - EasyMotion (Search and navigate using keyboard [See more](https://github.com/easymotion/vim-easymotion))
 - VimCompletesMe (Autocompletion plugin [See more](https://github.com/ackyshake/VimCompletesMe))
 - GruvBox (Colorscheme and themming plugin [See more](https://github.com/morhetz/gruvbox))
 - TMuxNavigator (Splitted window navigation plugin (just using common movement keys + <CTRL>) [See more](https://github.com/christoomey/vim-tmux-navigator))
 - LightLine (Statusline plugin [See more](https://github.com/itchyny/lightline.vim))
   - GitBranch (Git current branch for LightLine [See more](https://github.com/itchyny/vim-gitbranch))
 - ALE (Under testing. Not totally working [See more](https://github.com/dense-analysis/ale))
 - CtrlP (Fuzzy File, Buffer and Tag Finder [See more](https://github.com/ctrlpvim/ctrlp.vim))
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
Leader key is space bar (` `)    
     
Mapped commands:     
| Custom command      | Does             |
|---------------------|------------------|
| `<space_bar>` + `w` | Save file        |
| `<space_bar>` + `q` | Quit current file|
| `<space_bar>` + `nt`| Open NerdTree    |  
| `<space_bar>` + `s` | Open EasyMotion (using at least 2 chars)  |
| `<Ctrl>` + `p`      | Search files in PWD by name |
     
Vim inherit commands:
| Moving Command               | Does                                   |
|------------------------------|----------------------------------------|
| `w`                          | To next word begin                     |
| `b`                          | To prev. word begin                    |
| `e`                          | To word end                            |  
| `G`                          | To last file line                      |
| `g` + `[moving command | g]` | To `moving command` or file first line |
       
| Control commands              | Does                                                     |
|-------------------------------|----------------------------------------------------------|
| `ESC`                         | Enters in command mode                                   |
| `i`                           | Enters in insert mode                                    |
| `v`                           | Enters in visual mode (to select)                        |
| `d` + `[moving command | d ]` | Deletes from cursor to `moving command` or complete line |   
   
