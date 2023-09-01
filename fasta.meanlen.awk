#!/usr/bin/awk -f

/^>/ {n++}
!/^>/ {l += length}
END {print l/n}
