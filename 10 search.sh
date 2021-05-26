# GREP ------------------------------------------------
# Search for pattern in file
# -c, --count  
# -i, --ignore-case
# -s, Ignore dirs and not allowed
# -r, Recursive
# -R, Recursive with links

# -l, --files-with-matches
# -L, --files-without-matches

grep pattern file
grep pattern *

grep -c error /var/log/*.log

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