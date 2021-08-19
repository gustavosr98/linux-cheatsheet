# 🗃 Files, Search & Handling Text

- [🗃 Files, Search & Handling Text](#-files-search--handling-text)
  - [🗃 Files](#-files)
  - [🔍 Search](#-search)
  - [📝 Handling Text](#-handling-text)
  - [💾 Backups](#-backups)

## 🗃 Files

```bash
# LINKS ----------------------------------------------
# Create a link (-s for symbolic)
# Symbolic points to i-node
# Hard link points to memory (kind of copy)
ln -s <target> <link_name>

# Unlik
unlink <link_name>

# DIRS ----------------------------------------------
# Display the present working directory
pwd

# List all files in a long listing (detailed) format
# -l, long listing
# -R, --recursive
# -h, --human-readable
# -a, --all
# -A, all but . and ..

# -r, sort in reverse
# -S, sort by size
# -t, sort by time
ls -al
ls -al path

# Move to last path
cd -

# FILES ----------------------------------------------
# Create a directory
mkdir directory

# Remove (delete) file
# -r recusirve
# -f force
rm path

# Copy file1 to file2
# -r recursive
cp file1 file2

# Rename or move file1 to file2. If file2 is an existing directory, move file1 into directory file2
mv file1 file2

# Create an empty file or update the access and modification times of file.
touch file

# View the contents of file
cat file

# READING ----------------------------------------------
# Browse through a text file
less file

# Display the first 10 lines of file
head file

# Display the last 10 lines of file and "follow" the file as it grows.
tail -f file

# FILE TYPE ----------------------------------------------
# ELF is binary
file *

# COMPRESSION TAR ----------------------------------------------
# Create tar named archive.tar containing directory.
tar cf archive.tar directory

# Extract the contents from archive.tar.
tar xf archive.tar

# Create a gzip compressed tar file name archive.tar.gz.
tar czf archive.tar.gz directory

# Extract a gzip compressed tar file.
tar xzf archive.tar.gz

# Create a tar file with bzip2 compression
tar cjf archive.tar.bz2 directory

# Extract a bzip2 compressed tar file.
tar xjf archive.tar.bz2
```

## 🔍 Search

```bash
# GREP ------------------------------------------------
# Search for pattern in file
# -c, --count
# -i, --ignore-case
# -s, Ignore dirs and not allowed
# -r, Recursive
# -R, Recursive with links

# -A NUM, --after-context
# -B NUM, --before-context
# -C NUM, --context

# -l, --files-with-matches
# -L, --files-without-matches

grep pattern file
grep pattern *

grep -c error /var/log/*.log
grep -ri -A 5 method code-folder/

# SORT ----------------------------------------------
# -r, --reverse
# -u,, --unique
# -R, --random-sort
# -n, --numeric-sort
# -f, --ignore-case
# -c, --check
cat fruits.txt | sort

# LOCALE ----------------------------------------------
# Find files and directories by name
locate name

# FIND ------------------------------------------------
# -not
# Find files in path that start with "prefix".
find path -name 'prefix*'

# Find files larger than 100MB in path
find path -size +100M

# Find by type
# f file | d directory | l links
# c secuencials devices
# b block devices
find path -type f|d|l|c|b

# UNIQ ----------------------------------------------
# -c count
# -d dupliclates
cat fruits.txt | uniq

# TREE ----------------------------------------------
# -L levels
tree folder/
```

## 📝 Handling Text

Text Editors

- [nano (beginners)](./text-editors/README.md)
- [vim (advanced)](./text-editors/README.md)

```bash
# REDIRECT ------------------------------------------
# Stdin <
cat < file.txt

# Stout >
echo "Hola" > file.txt
echo "Hola 2" >> file.txt
date > `date +”%Y%m%d”`.txt

# Sterr 2>
grep hello /etc/* 2> /dev/null

# PIPES ---------------------------------------------
# Lines / Words / Chars
echo "Hola vale" | wc
echo "B\nA\nC" | sort

# TR ------------------------------------------------
# Change characters
tr this_chars that_chars
echo "Hola vale" | tr ' ' '_'

# Upper case
tr [:lower:] [:upper:]

# Trim
tr -d this_chars

# Squeeze spaces
tr -s ' '

# All in one line
tr -s '\n' ' '

# SED -----------------------------------------------
# Stream editor
# It doesnt change the file, just outputs it

# -i, change file
# -E, extended regex

# Replace N instance per line
sed 's/regexp/replace/<N>' file

# Replace global per line
sed 's/regexp/replace/g' file

# If regex contains /
sed 's!regexp!replace!g' file
```

## 💾 Backups

- GUI Tool: [Timeshift](https://github.com/teejee2008/timeshift)

```bash
# Only copies differences since last backup
rsync -aAXv --delete --exclude={pathA, pathB} /source /target
```
