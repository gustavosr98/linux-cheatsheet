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