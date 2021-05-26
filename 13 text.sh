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
