#!/bin/bash

if [ $# -eq 3 ]; then
    export OLD_COMMITTER="$1"
    export NEW_COMMITTER_NAME="$2"
    export NEW_COMMITTER_EMAIL="$3"
else
    echo "Usage: $0 \"badNameCommiter\" \"correctName\" \"correct@email\""
    echo "  or"
    echo "Usage: $0 \"bad@email\" \"correctName\" \"correct@email\""
    exit 1
fi

echo "$OLD_COMMITTER to $NEW_COMMITTER_NAME <$NEW_COMMITTER_EMAIL>"
echo ""

git filter-branch -f --commit-filter '
        if [ "$GIT_AUTHOR_NAME" = "$OLD_COMMITTER" ] || [ "$GIT_AUTHOR_EMAIL" = "$OLD_COMMITTER" ] || [ "$GIT_COMMITTER_NAME" = "$OLD_COMMITTER" ] || [ "$GIT_COMMITTER_EMAIL" = "$OLD_COMMITTER" ];
        then
            GIT_COMMITTER_NAME="$NEW_COMMITTER_NAME";
            GIT_AUTHOR_NAME="$NEW_COMMITTER_NAME";
            GIT_COMMITTER_EMAIL="$NEW_COMMITTER_EMAIL";
            GIT_AUTHOR_EMAIL="$NEW_COMMITTER_EMAIL";
            git commit-tree "$@";
        else
            git commit-tree "$@";
        fi' -- --all HEAD

