id="$(cargo pkgid)"
if [[ "$id" == *'@'* ]]; then
    version=$(echo "$id" | cut -d '@' -f2)
elif [[ "$id" == *'#'* ]]; then
    version=$(echo "$id" | cut -d '#' -f2)
else
    if [[ -z "$id" ]]; then
        echo "Error: \`cargo pkgid\` output is empty. Ensure that you're inside a crate." >&2
        exit 1
    fi
    echo "Error: Unable to determine version from cargo pkgid output: $id" >&2
    exit 1
fi;
echo "version=$version"
