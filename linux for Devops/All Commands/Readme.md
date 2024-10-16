### List directory contents
``` ls ```

### Change directory
``` cd ```


### Show current working directory
``` pwd```

### Create new directory
``` mkrid FolderName ```

### Create new empty file
``` touch fileName.txt ```

### Delete directory
``` rmdir DirectoryName ```

### Delete File
``` rm FileName ```

### Display text on terminal
``` echo "Hello, World!" ```

### Output text to file
``` echo "Hello, World!" > file.txt ```

### Display file contents
``` cat ```
for zip file
``` zcat compressed_file.gz```

### Display first 10 lines of file
``` head file.txt ```

### Display last 10 lines of file. -f flag continuously monitors file.
``` tail file.txt ```
``` tail -f log_file.log ```

### Display file page-wise
``` less file.txt```
``` more file.txt    ```

### Copy file
``` cp source destination```

### Copy folder
``` cp -r source destination```

### Move file
``` mv source destination ```

### File rename
``` mv currentName newName ```

### Count lines, words, and characters in file
``` wc fileName.txt ```

### Create link to file (hard link, soft link)
``` ln file.txt hard_link ``` 
``` ln -s file.txt soft_link ``` 

### Cut or extract text
``` cut -b [Number of bites 1-5] fileName.txt ```

### Save output to file and display on screen
``` echo "tee is running" | tee file.txt```

### Sort data
``` sort fileName.txt```

### Compare two files
``` diff file1.txt file2.txt ```

### Clear terminal
``` clear ```

### Connect to remote server
``` ssh user@remote_server ```

### Display disk space information
``` df -h ```

### Display directory size
``` du -sh MyFolder ```

### List running processes
``` ps aux   ```

### Display system resource information
``` top ```

### Display file or port usage
``` fuser -v /dev/tcp/80 ```

### Terminate process
``` kill 1234 ```

### Run process in background
``` nohup command & ```

### Display system memory information
``` free -m ```

### Display virtual memory information
``` vmstat -s ```