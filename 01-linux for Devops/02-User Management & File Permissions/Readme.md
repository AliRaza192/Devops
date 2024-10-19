# System level Commands

## User Management

### Displays system information, including OS name, version, architecture, and kernel version
``` uname```

### Shows system uptime
``` uptime ```

### Displays current date and time
``` date ```

### Displays information about currently logged-in users
``` who ```

### Displays current username only
``` whoami ```

### Displays user ID, group ID, and group memberships
``` id ```

### Grants superuser (root) privileges (for permission)
``` sudo ```

### Manages packages (Debian-based)
``` apt update ``` 

### Manages packages (RPM-based)
``` yum update ``` 

### Manages packages (RPM-based) replaces yum
``` dnf update ``` 

### Manages packages (Arch Linux)
``` pacman -Syy ``` 

### Manages packages (Gentoo Linux)
``` emerge --sync ``` 

### Shuts down or reboots system
``` shutdown -h now ```
``` shutdown -r now ```

### Reboots system
``` reboot ```

### Finds executable file location
``` which python ```



# User & Group management commands

### Switches to another user account
``` su userName ```

### Changes user password
``` passwd userName ```

### Delete a user
```userdel userName```


## Group Management

### Creates a new group
``` sudo groupadd groupName ```

### Creates a new group
``` sudo groupadd groupName ```

### Adds user to group
``` sudo gpasswd -a username groupname ```

### Revome user from group
``` sudo gpasswd -d username groupname ```

### Adds user to group as manager
``` sudo gpasswd -m username groupname ```


### Deletes a group
``` sudo groupdel groupName```


## File Permission Commands

### Sets default file permissions for new files and directories
``` umask ```

### Displays detailed file information, including permissions
``` ls -l [file/directory] ```

### Changes file permissions
``` chmod [permissions Num 777] [file/directory] ```

### sets rwxr-xr-x permissions
`chmod 755 file.txt`
### adds execute permission for owner
`chmod u+x file.txt`
### removes write permission for group
`chmod g-w file.txt`


### Changes file ownership

### changes owner to "user"
``` chown userName file.txt ```
### changes owner and group
``` chown user:group file.txt ```


### Changes file group ownership
``` chgrp [group] [file/directory] ```

# File Permissions

| Permission | Description |
| --- | --- |
| `r` | Read |
| `w` | Write |
| `x` | Execute |

![File Permissions](https://linuxcommand.org/images/file_permissions.png)


# File Permissions Explanation
============================


## Permission Types

| Symbol | Permission |
| --- | --- |
| `r` | Read |
| `w` | Write |
| `x` | Execute |


## User, Group, and Other

| Symbol | Description |
| --- | --- |
| `u` | User/Owner |
| `g` | Group |
| `o` | Other |
| `a` | All |


## Permission Modifiers

| Symbol | Description |
| --- | --- |
| `+` | Adds permission |
| `-` | Removes permission |
| `=` | Sets permission |


## Numeric Permissions

| Numeric | Permission |
| --- | --- |
| `777` | `rwxrwxrwx` (read, write, execute for all) |
| `755` | `rwxr-xr-x` (read, write, execute for owner; read, execute for group and other) |
| `644` | `rw-r--r--` (read, write for owner; read for group and other) |


## Example Usage

* `chmod 755 file.txt` (sets read, write, execute for owner; read, execute for group and other)
* `chmod u+x file.txt` (adds execute permission for owner)
* `chmod g-w file.txt` (removes write permission for group)


## Compression Commands

### Compresses files and directories
``` zip -r archive.zip fileName ```

### Uncompresses gzip files
``` gunzip compressed_file.gz ```

### Compresses files
``` gzip file.txt ```

### Creates and extracts archives
### create archive
``` tar -cvf archive.tar file ```
### extract archive
``` tar -xvf archive.tar ```


## File Transfer Commands

### SCP Command (Secure Copy)
``` scp [options] source_file destination_file ```

### upload file
``` scp file.txt user@remote_server:/remote/path/ ```
### download file
``` scp user@remote_server:/remote/path/file.txt ./ ```

### Synchronizes files and directories
``` rsync [options] source destination ```

### sync directories
``` rsync -avz source_dir/ destination_dir/ ```
### sync remote files to local
``` rsync -avz user@remote_server:/remote/path/ ./ ```