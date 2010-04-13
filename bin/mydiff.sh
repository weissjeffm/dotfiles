#s called by git with 7 parameters:
# path old-file old-hex old-mode new-file new-hex new-mode

`which meld` "$2" "$5" | cat
