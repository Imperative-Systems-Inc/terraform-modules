#!/bin/bash
is_git="false"
branch=""
remote=""
hash=""
is_git_test="$(git rev-parse --is-inside-work-tree 2>&1)"
if [ "$is_git_test" == "true" ]; then
    is_git="true"
    branch=$(git rev-parse --abbrev-ref HEAD)
    remote=$(git config --get remote.origin.url)
    hash=$(git rev-parse HEAD)
fi
echo "{\"is_git\": \"$is_git\", \"branch\": \"$branch\", \"remote\": \"$remote\", \"hash\": \"$hash\"}"