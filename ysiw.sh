#!/bin/bash

if ! command -v python3 &> /dev/null
then
    echo "You need Python3."
    exit 1
fi

cp ~/.bashrc ~/.bashrc.backup

cat <<'EOF' >> ~/.bashrc

command_not_found_handle() {
    cmds=$(compgen -c | tr '\n' ' ')

    siw=$(python3 - <<PY
from collections import Counter
target = "$1"
for cmd in """$cmds""".split():
    if cmd != target and Counter(cmd) == Counter(target):
        print(cmd)
        break
PY
)

    if [ -n "$siw" ]; then
        echo -e "\e[1mYou spelled it wrong.\e[0m"
    else
        suggestion=$(python3 - <<PY
import difflib
cmds = """$cmds""".split()
matches = difflib.get_close_matches("$1", cmds, n=1, cutoff=0.6)
print(matches[0] if matches else "")
PY
)
        echo "bash: $1: command not found"
        if [ -n "$suggestion" ]; then
            echo "Did you mean $suggestion?"
        fi
    fi
}
EOF

echo "Installation finished. Restart your terminal."
