# personal-shortcuts

my personal AutoHotKey shortcuts


list of shortcuts

| key | action | 
|-|-|
| `windows` + `s` | open `everything.exe`  ( `s` stands for Search ) |
| `leftAlt` + `n` | new windows desktop | 
| `leftAlt` + `>` | move to left desktop | 
| `leftAlt` + `<` | move to right desktop | 
| `leftAlt` + `c` | close windows desktop | 
| `Alt` + `t` | open selected text in google translate <br/>step-1: copy selected text<br/>step-2: open in google translate in browser (python script)|
| `Alt` + `f` | place a RTL-Mark character (fixing farsi-RTL) |
| `Ctrl`+`Shift`+`s` | open my personal working folder |
| `Ctrl`+`e` | open selected file in Notepad++ |

install AHK:  
[https://www.autohotkey.com/](https://www.autohotkey.com/)

python script need pyperclip:  
```shell
pip install pyperclip
```

#### `git3` 
 git3 is created to do `git add` , `git commit` and `git push` at the same time.  
 it is a dead simple tool for repetitive scenario.

install:  
1. see path directorys with `echo  $Env:PATH`
2. put git3.bat in one of your path directorys

usage:  
`git3 [add_file_or_folder] [commit_message]`
