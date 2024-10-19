# Pro Linux Commands


## AWK
### Text processing, pattern searching, and formatting
### $1 means column one 
``` awk '{print $1}' file.txt ```

### Select Specific Columns
``` awk '{print $1, $2, $5}' app.log ```

### Filter Lines with "INFO"
``` awk '/INFO/{print $1, $2, $5}' app.log  ```

### Filter Lines with "INFO" and Redirect Output
``` awk '/INFO/ {print $1, $2, $3, $5}' app.log > onlyinfo.log ```

### Count Lines with "INFO"
```  awk '/INFO/ {count++} END {print count}' app.log ```

### Count Lines with "TRACE" and Print Message
``` awk '/TRACE/ {count++} END {print "the count is TRACE is:, "count}' app.log ```

### Filter Lines by Time Range
``` awk '$2 >= "08:51:00" && $2 <= "08:51:05" {print $2,$3,$4}' app.log ```

## SED
### Text editing, searching, and replacement
``` sed 's/old_text/new_text/g' file.txt ```

**SED Command**

### SED Command Options


| Flag | Description | Example |
| --- | --- | --- |
| `s` | Search aur replace karta hai | `sed 's/old_text/new_text/g' file.txt` |
| `g` | Global replacement karta hai | `sed 's/old_text/new_text/g' file.txt` |
| `p` | Print karta hai | `sed -n 'p' file.txt` |
| `-n` | Quiet mode, sed print nahi karta | `sed -n 'p' file.txt` |
| `-e` | Expression flag, multiple expressions | `sed -e 's/old_text/new_text/g' -e 's/another_old/another_new/g' file.txt` |
| `-i` | In-place editing karta hai | `sed -i 's/old_text/new_text/g' file.txt` |
| `-r` | Extended regular expressions enable karta hai | `sed -r 's/old_text(new_text)/\2\1/g' file.txt` |
| `-f` | File se expressions read karta hai | `sed -f script.sed file.txt` |
| `-l` | Line length specify karta hai | `sed -l 10 file.txt` |
| `-u` | Unbuffered output karta hai | `sed -u 's/old_text/new_text/g' file.txt` |


### Common SED Commands


| Command | Description | Example |
| --- | --- | --- |
| `d` | Delete karta hai | `sed '1d' file.txt` |
| `=` | Line numbers print karta hai | `sed '=' file.txt` |
| `q` | Quit karta hai | `sed '2q' file.txt` |
| `y` | Translate karta hai | `sed 'y/abc/xyz/' file.txt` |


### Replace INFO with LOG
``` sed 's/INFO/LOG/g' app.log ```

### Print Only Line Numbers
``` sed -n -e '/INFO/=' app.log ```

### Print Line Numbers and Matching Lines
``` sed -n -e '/INFO/=' -e '/INFO/p' app.log ```

### INFO replace with LOG starting 15 lines
``` sed '1,15 s/INFO/LOG/g' app.log ``` 

### INFO replace with LOG starting 15 lines and print 1 to 10 line , 11 line quit, 
```sed '1,15 s/INFO/LOG/g; 1,10p; 11q' app.log```



## GREP
### Search for "info" (Case-Insensitive)
```grep -i info app.log```

### Count Lines with "info" (Case-Insensitive)
```grep -i -c info app.log```

### Display All Processes
``` ps aux ```

### Filter Processes by "ubuntu"
``` ps aux | grep ubuntu ```

| Command | Option | Description |
| --- | --- | --- |
| **grep** | -i | Case-insensitive search |
|  | -c | Count matching lines |
|  | -v | Invert match (print non-matching lines) |
|  | -n | Prefix each line with line number |
| **ps** | -a | Show processes of all users |
|  | -u | Display user-oriented information |
|  | -x | Show processes without controlling terminals |
|  | -e | Display all processes (equivalent to -a and -x) |


# Here's a table highlighting the differences between awk, sed, and grep:
| Command | Purpose | Key Features | Examples |
| --- | --- | --- | --- |
| **awk** | Data processing and formatting | Pattern scanning, field manipulation, arithmetic operations | `awk '{print $1}' file.txt` |
| **sed** | Stream editing | Text substitution, deletion, insertion | `sed 's/old/new/g' file.txt` |
| **grep** | Pattern searching | Regular expressions, line matching | `grep "pattern" file.txt` |