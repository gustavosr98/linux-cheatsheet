
# 📟 Shell & Scripting

- [🐚 Shell](#🐚-shell)
- [📟 Scripting](#📟-scripting)

## 🐚 Shell

```bash
# BINARIES ----------------------------------------------
# Folder of excetable 
which <cmd>

# Manual
man [int] <cmd>

# ENV ----------------------------------------------
# $PATH -> binaries / $HOME
env

# ALIAS --------------------------------------------
# Create alias
alias alias_name='cmd'

# Excecute alias
alias_name

# Consult alias
alias
alias alias_name

# SHORTCUTS ----------------------------------------
# Find in terminal output
Ctrl + Shift + f
```

## 📟 Scripting 

```bash
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
```