#!/bin/bash

file="./阶乘阶除"

convert_file() {
    perl -pi -e 's/\\\(/\$\(/g; s/\\\)/\)\$/g; s/\\\[/\$\$/g; s/\\\]/\$\$/g;' "$1"
}

if [ -d "$file" ]; then
    echo "Processing directory: $file"
    find "$file" -type f -name "*.md" | while read -r f; do
        echo "  Converting: $f"
        convert_file "$f"
    done
    echo "Done!"
elif [ -f "$file" ]; then
    echo "Processing file: $file"
    cp "$file" "${file}.bak"
    convert_file "$file"
    echo "Done!"
else
    echo "Error: $file not found!"
    exit 1
fi

echo ""
echo "Replacements:"
echo "  \(  ->  \$("
echo "  \)  ->  )\$"
echo "  \[  ->  \$\$"
echo "  \]  ->  \$\$"