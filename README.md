# My custom NeoVim configuration   
It also should work for Vim    
    
### What it does?
Configuration file has my own vim customization. It contains some rules, a plugin manager and also some plugins ready to be installed.
   
##### Some added plugins
 - Vim-Plug (plugin manager [See more](https://github.com/junegunn/vim-plug))  
 - NerdTree (Allows to see directory tree)   
 - And so on    

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
| `<space_bar>` + `s` | Open EasyMotion  |
     
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
   
