# Linux Commands Cheet Sheet

## Create file Commands 
### Number one "cat"
The cat (short for "concatenate") command in Linux is used to display, combine, and manipulate files. It is one of the most commonly used commands for working with text files.

## Features of `cat` Command

| **Feature**                  | **Description**                                                                 |
|------------------------------|---------------------------------------------------------------------------------|
| Display the contents of a file | View the content of a text file directly in the terminal.                      |
| Concatenate multiple files    | Combine the contents of multiple files and display or save them in a new file. |
| Create new files              | Quickly create small files directly from the terminal.                         |
| Number lines                  | Display file content with line numbers.                                        |
| Display special characters    | Show hidden or special characters like tabs or end-of-line markers.            |



1. Display the content of a file
`cat file.txt`

2. Concatenate multiple files and display the result
`cat file1.txt file2.txt`

3. Concatenate multiple files and save the result to a new file
`cat file1.txt file2.txt > combined.txt`

4. Append content of one file to another
`cat file1.txt >> file2.txt`

5. Create a new file and add content
`cat > newfile.txt`
(Type your content here, then press Ctrl+D to save)

6. Number all lines in the file
`cat -n file.txt`

7. Number only non-empty lines
`cat -b file.txt`

8. Show hidden characters (e.g., tabs, end of lines)
`cat -v file.txt`

9. Suppress repeated empty lines
`cat -s file.txt`

10. Combine options (e.g., number lines and suppress empty lines)
`cat -ns file.txt`

11. Use `cat` to read from standard input
`cat`
(Type text, then press Ctrl+D to display what you typed)


# Complete Options Reference for `cat`

| **Option** | **Description**                                                   |
|------------|-------------------------------------------------------------------|
| `-n`       | Number all output lines.                                          |
| `-b`       | Number non-empty lines only.                                      |
| `-s`       | Suppress repeated empty lines.                                    |
| `-v`       | Display special characters.                                       |
| `-E`       | Display `$` at the end of each line.                              |
| `-T`       | Display `^I` for tab characters.                                  |
| `-A`       | Equivalent to `-vET` (show all special characters and markers).   |


