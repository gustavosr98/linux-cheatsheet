# BINARY ----------------------------------------------
#!/bin/bash
#!/usr/bin/python

# TESTS ----------------------------------------------
# -e, exists
# -f, file
# -d, directory
# -L, link

# -s, > 0

# -r, readable
# -w, writtable
# -x, excecutable
test [option] <file>

# CONDITIONAL ----------------------------------------------
if [condition]
then
  # cmds
fi

if [-d directory]
then
  echo "Directory exists"
fi
