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


### Complete Options Reference for `cat`

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


### Features of `touch` Command

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


### Complete Options Reference for `touch`

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

### Features of `vi` Editor

| **Feature**            | **Description**                                                         |
|------------------------|-------------------------------------------------------------------------|
| Text Editing           | Create, view, and modify text files directly in the terminal.           |
| Modes                  | Operates in two main modes:                                             |
|                        | - **Command Mode**: For executing commands (e.g., saving, exiting, deleting lines). |
|                        | - **Insert Mode**: For editing the content of the file.                 |
| Search and Replace     | Quickly find and replace text within files.                             |
| Navigation             | Efficiently move through large files.                                   |


### Key Modes in `vi`

| **Mode**   | **Description**                                                                 |
|------------|---------------------------------------------------------------------------------|
| Command    | Default mode when vi starts. Use commands for navigation, saving, etc.          |
| Insert     | Enter text editing mode by pressing `i`, `a`, or `o`.                          |
| Visual     | Select text for copying, cutting, or formatting. Enter this mode with `v`.     |


### Switching Modes in `vi`

| **Mode**       | **Action**                                                         |
|----------------|--------------------------------------------------------------------|
| Command Mode   | Press `Esc` to return to Command Mode.                             |
| Insert Mode    | Press `i` to insert text at the cursor position.                  |
|                | Press `a` to append text after the cursor.                         |
|                | Press `o` to open a new line below.                                |


### Saving and Exiting in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:w`                | Save the file                         |
| `:q`                | Exit `vi`                             |
| `:wq`               | Save and exit                         |
| `:q!`               | Exit without saving                   |
| `:w filename.txt`   | Save as a new file                    |

### Navigation in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `h`                 | Move left                             |
| `l`                 | Move right                            |
| `j`                 | Move down                             |
| `k`                 | Move up                               |
| `:0`                | Go to the beginning of the file       |
| `:$`                | Go to the end of the file             |

### Editing Text in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `x`                 | Delete the character under the cursor |
| `dd`                | Delete the entire current line        |
| `dw`                | Delete the current word               |
| `yy`                | Copy the current line                 |
| `p`                 | Paste copied or cut text              |
| `u`                 | Undo the last change                  |
| `Ctrl + r`          | Redo the last undone change           |

### Searching in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `/text`             | Search for `text` downward            |
| `?text`             | Search for `text` upward              |
| `n`                 | Repeat the last search in the same direction |
| `N`                 | Repeat the last search in the opposite direction |

### Replacing Text in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:%s/old/new/g`     | Replace all occurrences of "old" with "new" |
| `:s/old/new/`       | Replace the first occurrence of "old" with "new" in the current line |

### Line Numbers in `vi`

| **Command**         | **Description**                       |
|---------------------|---------------------------------------|
| `:set number`       | Show line numbers                     |
| `:set nonumber`     | Hide line numbers                     |


### Quick Reference Cheat Sheet for `vi`

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


### Saving and Exiting in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + O`        | Save the current file.                                   |
| `Ctrl + X`        | Exit nano.                                               |
| `Ctrl + O → Enter`| Save and confirm filename while exiting.                 |

### Editing Text in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + K`        | Cut the current line.                                    |
| `Ctrl + U`        | Paste the last cut text.                                 |
| `Ctrl + J`        | Justify (reformat) the current paragraph.                |

### Navigation in `nano`

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

### Miscellaneous Commands in `nano`

| **Command**       | **Description**                                          |
|-------------------|----------------------------------------------------------|
| `Ctrl + G`        | Display help.                                            |
| `Ctrl + C`        | Show the cursor position (line/column).                  |
| `Ctrl + T`        | Open a file browser (if enabled).                        |


### Command-Line Options for `nano`

| **Option** | **Description**                                  |
|------------|--------------------------------------------------|
| `-B`       | Create a backup file before editing.            |
| `-m`       | Enable mouse support (if available).            |
| `-R`       | Open the file in read-only mode.                 |
| `-c`       | Display the current cursor position.            |
| `-v`       | Open the file in view-only mode.                 |



### `cp` Command in Linux

The `cp` command is used to copy files and directories in Linux. It supports various options for preserving attributes, recursive copying, and more.

---

## 1. Features of the `cp` Command

| **Feature**           | **Description**                                            |
|-----------------------|------------------------------------------------------------|
| Copy files            | Copy a single file to another file or location.            |
| Copy multiple files   | Copy multiple files to a directory.                        |
| Recursive copy        | Copy directories and their contents.                       |
| Preserve attributes   | Retain file ownership, timestamps, and permissions.        |
| Interactive mode      | Prompt before overwriting files.                           |
| Verbose output        | Show details of files being copied.                        |

---

### 2. Syntax

``` cp [options] source destination```


| Command        | Definition                                                                                          | Command Example         | Extra Details                                                                                                     |
|----------------|----------------------------------------------------------------------------------------------------|-------------------------|-------------------------------------------------------------------------------------------------------------------|
| `cp`          | Copies files or directories from one location to another.                                          | `cp source.txt dest.txt` | Use `-r` to copy directories recursively.                                                                        |
| `mv`          | Moves or renames files or directories.                                                             | `mv oldname.txt newname.txt` | Can also be used to move files between directories.                                                              |
| `rm`          | Removes (deletes) files or directories.                                                            | `rm file.txt`           | Use `-r` to remove directories and their contents. Use caution as deletions are irreversible.                    |
| `more`        | Displays the content of a file one screen at a time.                                               | `more file.txt`         | Press `Space` to scroll forward and `q` to quit.                                                                 |
| `less`        | Similar to `more`, but allows both forward and backward navigation through the file content.        | `less file.txt`         | Use `Arrow keys` for navigation. Press `q` to quit.                                                              |
| `head`        | Displays the first few lines of a file. Default is 10 lines.                                       | `head file.txt`         | Use `-n` to specify the number of lines (e.g., `head -n 5 file.txt`).                                            |
| `tail`        | Displays the last few lines of a file. Default is 10 lines.                                        | `tail file.txt`         | Use `-n` to specify the number of lines (e.g., `tail -n 5 file.txt`).                                            |
| `hostname`    | Prints the system's hostname.                                                                      | `hostname`              | Useful for identifying the machine in a network.                                                                |
| `hostname -i` | Displays the system's IP address associated with its hostname.                                     | `hostname -i`           | May not always return the external IP address, especially in NAT setups.                                         |
| `sort`        | Sorts lines in a file or input in ascending or descending order.                                   | `sort file.txt`         | Use `-r` for reverse order, and `-n` for numeric sorting.                                                        |
| `grep`        | Searches for specific patterns in a file or input.                                                 | `grep "search_term" file.txt` | Use `-i` for case-insensitive search and `-r` to search recursively in directories.                              |
| `echo`        | Prints text or variables to the standard output.                                                   | `echo "Hello, World!"`  | Useful for debugging scripts or generating simple outputs.                                                       |
| `which`       | Locates the full path of an executable file or command.                                            | `which python`          | Helps determine which version of a command will run.                                                             |
| `whoami`      | Prints the username of the current user.                                                           | `whoami`                | Useful for verifying which user is running a command.                                                            |


### Linux Commands Definitions and Extra Details

| Command         | Definition                                                                                               | Command Example            | Extra Details                                                                                                      |
|-----------------|---------------------------------------------------------------------------------------------------------|----------------------------|--------------------------------------------------------------------------------------------------------------------|
| `useradd`      | Adds a new user to the system.                                                                           | `useradd newuser`          | Use `-m` to create a home directory and `-s` to specify the shell.                                                |
| `groupadd`     | Creates a new group on the system.                                                                       | `groupadd newgroup`        | Use `-g` to set a specific group ID.                                                                              |
| `ln`           | Creates a hard link to a file.                                                                           | `ln file1 link1`           | A hard link points to the same inode as the original file.                                                        |
| `ln -s`        | Creates a symbolic (soft) link to a file or directory.                                                   | `ln -s /path/to/file link` | A symbolic link is a shortcut that points to the original file path.                                              |
| `gzip`         | Compresses files using the GNU zip algorithm.                                                           | `gzip file.txt`            | Use `gzip -d` to decompress files.                                                                                |
| `unzip`        | Extracts files from a `.zip` archive.                                                                    | `unzip archive.zip`        | Use `-l` to list archive contents without extracting.                                                             |
| `tar`          | Archives files into a single file, optionally compressing them.                                          | `tar -cvf archive.tar dir` | Use `-z` to compress with gzip and `-x` to extract.                                                              |
| `wget`         | Downloads files from the internet using HTTP, HTTPS, or FTP protocols.                                   | `wget https://example.com/file` | Use `-c` to resume incomplete downloads.                                                                         |

---

### Detailed Explanations

### `useradd`
- **Command**: `useradd -m -s /bin/bash newuser`
- **Description**: Adds a new user with a home directory and bash shell.
- **Example**:
  ```bash
  useradd -m -s /bin/bash john


### Hard Link vs. Soft Link

| Feature            | Hard Link                                  | Soft Link                                  |
|--------------------|--------------------------------------------|-------------------------------------------|
| **Points To**      | Same inode as the original file.           | File path of the original file.           |
| **Dependency**     | Independent of the original file's location. | Dependent on the original file's location. |
| **Directory Linking** | Cannot link directories.                  | Can link directories.                     |
| **File Deletion**  | Original file deletion does not break the hard link. | Breaks if the original file is deleted or moved. |



### Linux Commands and File Permissions

| Command   | Definition                                                                                                 | Command Example              | Extra Details                                                                                       |
|-----------|-----------------------------------------------------------------------------------------------------------|------------------------------|-----------------------------------------------------------------------------------------------------|
| `chmod`   | Changes the permissions of a file or directory.                                                           | `chmod 755 file.txt`         | Use symbolic (e.g., `chmod u+r`) or numeric mode (`chmod 644`).                                     |
| `chgrp`   | Changes the group ownership of a file or directory.                                                       | `chgrp developers file.txt`  | Requires the group to already exist.                                                               |
| `chown`   | Changes the owner and optionally the group of a file or directory.                                         | `chown user:group file.txt`  | Requires superuser privileges. Can use `-R` for recursive changes.                                 |

---

### File Permissions: `r`, `w`, `x` with Numeric Values

| Permission | Description                              | Symbol | Numeric Value |
|------------|------------------------------------------|--------|---------------|
| `r`        | Read: View the content of a file.        | `r`    | 4             |
| `w`        | Write: Modify the content of a file.     | `w`    | 2             |
| `x`        | Execute: Run the file as a program.      | `x`    | 1             |

---

### Combined Permissions

File permissions are calculated by summing the numeric values of `r`, `w`, and `x` for the user, group, and others. For example:

| Permission | Numeric Value | Meaning                              |
|------------|---------------|--------------------------------------|
| `r--`      | 4             | Read-only.                          |
| `rw-`      | 6             | Read and write.                     |
| `rwx`      | 7             | Read, write, and execute.           |
| `---`      | 0             | No permissions.                     |

---

### Usage Examples

1. **`chmod`**:
   - **Command**: `chmod 644 file.txt`
   - **Description**: Sets permissions to:
     - Owner: Read and write (`rw-` = 6)
     - Group: Read-only (`r--` = 4)
     - Others: Read-only (`r--` = 4)
   - **Example**:
     ```bash
     chmod 644 file.txt
     ```

2. **`chgrp`**:
   - **Command**: `chgrp developers file.txt`
   - **Description**: Changes the group ownership of `file.txt` to `developers`.
   - **Example**:
     ```bash
     chgrp developers file.txt
     ```

3. **`chown`**:
   - **Command**: `chown user:group file.txt`
   - **Description**: Changes the owner to `user` and the group to `group`.
   - **Example**:
     ```bash
     chown john:developers file.txt
     ```

4. **Recursive Use**:
   - **Command**: `chmod -R 755 dir`
   - **Description**: Applies the permissions `755` to all files and subdirectories within `dir`.
   - **Example**:
     ```bash
     chmod -R 755 /home/user/docs
     ```
