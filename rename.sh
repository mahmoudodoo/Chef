#!/bin/bash

# Temporary prefix to avoid naming conflicts
temp_prefix="chef_"

# Counter
count=1

# Rename directories to temporary names
for dir in */; do
  mv -- "$dir" "$temp_prefix$count"
  ((count++))
done

# Reset counter for final rename
count=1

# Rename from temporary names to final numeric names
for dir in $temp_prefix*/; do
  mv -- "$dir" "$count"
  ((count++))
done
