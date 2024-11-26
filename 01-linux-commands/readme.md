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


### Number two "touch"
The touch command in Linux is primarily used to create empty files and update the timestamps of existing files or directories. It’s a simple yet powerful utility for managing files.


## Features of `touch` Command

| **Feature**                    | **Description**                                                              |
|--------------------------------|------------------------------------------------------------------------------|
| Create Empty Files             | Quickly create one or multiple empty files.                                  |
| Update Timestamps              | Modify the access and modification timestamps of files without altering their content. |
| Create Files Without Overwriting | Avoid accidental overwriting by using the appropriate options.               |
| Batch File Creation            | Create multiple files at once.                                               |


1. Create a single empty file  
   ``touch file.txt``

2. Create multiple empty files  
   ``touch file1.txt file2.txt file3.txt``

3. Update the timestamp of an existing file  
   ``touch existing_file.txt``

4. Create a file without overwriting if it already exists  
   ``touch -c file.txt``

5. Create a file and set a specific timestamp  
   ``touch -t YYYYMMDDHHMM.SS file.txt``

6. Set the timestamp to match another file  
   ``touch -r reference_file.txt target_file.txt``

7. Create a file and use the current time for access and modification  
   ``touch -a file.txt``

8. Change only the modification time  
   ``touch -m file.txt``

9. Use a custom time instead of the current time  
   ``touch -d "2 days ago" file.txt``


# Complete Options Reference for `touch`

| **Option** | **Description**                                                    |
|------------|--------------------------------------------------------------------|
| `-a`       | Change only the access time.                                       |
| `-m`       | Change only the modification time.                                 |
| `-c`       | Do not create the file if it doesn’t exist.                        |
| `-t`       | Use a custom timestamp in the format `[[CC]YY]MMDDhhmm[.ss]`.      |
| `-r`       | Use the timestamp of another file.                                 |
| `-d`       | Set a custom date/time in a human-readable format.                 |


## Text Editor
### Number one "vi"
The vi command opens the Vi text editor, which is a powerful, terminal-based text editor used for creating and editing files in Linux. It is widely available and serves as the default editor on many systems.

### Syntax
`vi [options] [filename]`

## Features of `vi` Editor

| **Feature**            | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| Text Editing           | Create, view, and modify text files directly in the terminal.           |
| Modes                  | Operates in two main modes:                                             |
|                        | - **Command Mode**: For executing commands (e.g., saving, exiting, deleting lines). |
|                        | - **Insert Mode**: For editing the content of the file.                 |
| Search and Replace     | Quickly find and replace text within files.                             |
| Navigation             | Efficiently move through large files.                                   |


# Key Modes in `vi`

| **Mode**   | **Description**                                                                 |
|------------|---------------------------------------------------------------------------------|
| Command    | Default mode when vi starts. Use commands for navigation, saving, etc.          |
| Insert     | Enter text editing mode by pressing `i`, `a`, or `o`.                          |
| Visual     | Select text for copying, cutting, or formatting. Enter this mode with `v`.     |


# Switching Modes in `vi`

| **Mode**       | **Action**                                                         |
|----------------|--------------------------------------------------------------------|
| Command Mode   | Press `Esc` to return to Command Mode.                             |
| Insert Mode    | Press `i` to insert text at the cursor position.                  |
|                | Press `a` to append text after the cursor.                         |
|                | Press `o` to open a new line below.                                |


# Saving and Exiting in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:w`                | Save the file                         |
| `:q`                | Exit `vi`                             |
| `:wq`               | Save and exit                         |
| `:q!`               | Exit without saving                   |
| `:w filename.txt`   | Save as a new file                    |

# Navigation in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `h`                 | Move left                             |
| `l`                 | Move right                            |
| `j`                 | Move down                             |
| `k`                 | Move up                               |
| `:0`                | Go to the beginning of the file       |
| `:$`                | Go to the end of the file             |

# Editing Text in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `x`                 | Delete the character under the cursor |
| `dd`                | Delete the entire current line        |
| `dw`                | Delete the current word               |
| `yy`                | Copy the current line                 |
| `p`                 | Paste copied or cut text              |
| `u`                 | Undo the last change                  |
| `Ctrl + r`          | Redo the last undone change           |

# Searching in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `/text`             | Search for `text` downward            |
| `?text`             | Search for `text` upward              |
| `n`                 | Repeat the last search in the same direction |
| `N`                 | Repeat the last search in the opposite direction |

# Replacing Text in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:%s/old/new/g`     | Replace all occurrences of "old" with "new" |
| `:s/old/new/`       | Replace the first occurrence of "old" with "new" in the current line |

# Line Numbers in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:set number`       | Show line numbers                     |
| `:set nonumber`     | Hide line numbers                     |


# Quick Reference Cheat Sheet for `vi`

| **Action**           | **Command**                  |
|----------------------|------------------------------|
| Save file            | `:w`                         |
| Exit                 | `:q`                         |
| Save and exit        | `:wq`                        |
| Undo last change     | `u`                          |
| Delete line          | `dd`                         |
| Copy line            | `yy`                         |
| Paste                | `p`                          |
| Search               | `/text`                      |
| Replace text         | `:%s/old/new/g`              |
| Show line numbers    | `:set number`                |


## Number two "nano"
The nano command is a simple, user-friendly, and widely used text editor in Linux. Unlike more complex editors like vi or vim, nano is beginner-friendly and operates entirely within the terminal.

### Syntax
`nano [options] [filename]`

#### Commonly Used Commands
Open a file (create if it doesn't exist)
`nano filename.txt`

Open a file with cursor at a specific line and column
`nano +line,column filename.txt`

#### Go to a Specific Line and Column:
`nano +5,10 myfile.txt`


# Saving and Exiting in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + O`        | Save the current file.                                   |
| `Ctrl + X`        | Exit nano.                                               |
| `Ctrl + O → Enter`| Save and confirm filename while exiting.                 |

# Editing Text in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + K`        | Cut the current line.                                    |
| `Ctrl + U`        | Paste the last cut text.                                 |
| `Ctrl + J`        | Justify (reformat) the current paragraph.                |

# Navigation in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| Arrow Keys        | Move the cursor.                                         |
| `Ctrl + A`        | Move to the beginning of the line.                       |
| `Ctrl + E`        | Move to the end of the line.                             |
| `Ctrl + W`        | Search for text.                                         |
| `Ctrl + Y`        | Scroll up one page.                                      |
| `Ctrl + V`        | Scroll down one page.                                    |

# Search and Replace in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + W`        | Open the search prompt.                                  |
| `Ctrl + W → Ctrl + R` | Search and replace text.                             |

# Miscellaneous Commands in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + G`        | Display help.                                            |
| `Ctrl + C`        | Show the cursor position (line/column).                  |
| `Ctrl + T`        | Open a file browser (if enabled).                        |


# Command-Line Options for `nano`

| **Option** | **Description**                                  |
|------------|--------------------------------------------------|
| `-B`       | Create a backup file before editing.            |
| `-m`       | Enable mouse support (if available).            |
| `-R`       | Open the file in read-only mode.                 |
| `-c`       | Display the current cursor position.            |
| `-v`       | Open the file in view-only mode.                 |

