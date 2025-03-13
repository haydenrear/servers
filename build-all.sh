#!/usr/bin/env zsh

for i in src/*; do
  if [[ -e $i/Dockerfile ]]; then
    if [[ $i == "src/sqlite" ]]; then
      cd src/sqlite
      docker build -t mcp/sqlite .
      cd ../..
    else
      mcp=$(echo $i | sed -e "s/src/mcp/g")
      echo "Building $mcp"
      docker build -t $mcp -f $i/Dockerfile .
    fi
  fi
done