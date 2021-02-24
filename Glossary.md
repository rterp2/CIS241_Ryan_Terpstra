**man** - man command in Linux is used to display the user manual of any command that we can run on the terminal. It provides a detailed view of the command which includes NAME, SYNOPSIS, DESCRIPTION, OPTIONS, EXIT STATUS, RETURN VALUES, ERRORS, FILES, VERSIONS, EXAMPLES, AUTHORS and SEE ALSO.

```
man [command name] 
```

**ls** - The ls command is used to list files or directories in Linux and other Unix-based operating systems. Just like you navigate in your File explorer or Finder with a GUI, the ls command allows you to list all files or directories in the current directory by default, and further interact with them via the command line

```
ls
```

**touch** - The touch command is a standard command used in UNIX/Linux operating system which is used to create, change and modify timestamps of a file.

```
touch [file name]
```

**clear** - clears the terminal screen

```
clear
```

**ssh** - Secure Shell, sometimes referred to as Secure Socket Shell, is a protocol which allows you to connect securely to a remote computer or a server by using a text-based interface. When a secure SSH connection is established, a shell session will be started, and you will be able to manipulate the server by typing commands within the client on your local computer. 

```
ssh [ip address]
```

**sort** -SORT command is used to sort a file, arranging the records in a particular order. By default, the sort command sorts file assuming the contents are ASCII. Using options in sort command, it can also be used to sort numerically.

```
sort [filename]
```

**cut** - cut is a command-line utility that allows you to cut parts of lines from specified files or piped data and print the result to standard output. It can be used to cut parts of a line by delimiter, byte position, and character.

```
cut OPTION [filename]
```

:*uniq** - uniq is the tool that helps to detect the adjacent duplicate lines and also deletes the duplicate lines. uniq filters out the adjacent matching lines from the input file(that is required as an argument) and writes the filtered data to the output file .

```
uniq [filename]
```

**wc** - counts number of words in a document

```
wc [filename]
```

**echo** - echo command in linux is used to display line of text/string that are passed as an argument . This is a built in command that is mostly used in shell scripts and batch files to output status text to the screen or a file

```
echo [option][string]
```

**date** - displays current date and time

```
date
```

**whoami** - displays current user

```
whoami
```

**cd** - The cd (“change directory”) command is used to change the current working directory

```
cd [destination]
```

**cat** -reads data from the file and gives their content as output. It helps us to create, view, concatenate files.

```
cat [filename]
```

**info** - gives information about a command.  typically more detailed than the 'man' command. 

```
info [command]
```

**hd** - The hd or hexdump command in Linux is used to filter and display the specified files, or standard input in a human readable specified format. For example, if you want to view an executable code of a program, you can use hexdump to do so.

```
hd [options][filename]
```

**history** - keeps a list of all other commands that have been run from the terminal session, then allows you to replay or ruse those commands instead of retyping them.

```
history
```

**chmod** - change the access permissions of files and directories.

```
chmod [options][Mode][Filename]
```

**chown** - allows you to change the user or group ownership of a given file, directory, or symbolic link.

```
chown [options] USER[:group]FILES
```

**chgrp** - used to change the group ownership of a file or directory.

```
chgrp [OPTION] group file
```

**pwd** - displays the present working directory.

```
pwd
```

**ln** -ln is a command-line utility for creating links between files. By default, the ln command creates hard links. To create a symbolic link, use the -s

```
ln -s[OPTIONS]FILE LINK
```

**mkdir**- allows users to create or make new directories.  Also can set permissions and create multiple directories.

```
mkdir [option] dir_name
```

**mv** -used to rename and move files and directories from one location to another.

```
mv [options] SOURCE DESTINATION
```

**cp** - copy files or group of files or directory.

```
cp [option] Source Destination
```

**rm** -remove files or directories.

```
rm [options] FILE
```

**file** - displays the file type of a given file.

```
file [option] filename
```

**mount/unmount** - attaches or detaches file systems and removable devices such as USB flash drives at a particular mount point in the directory tree. 

```
mount [option] Device_Name DIRECTORY
```


