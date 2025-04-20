#!/bin/bash

declare -A sections=(
  ["threat-intel"]="Threat analysis: APTs, campaigns, malware, and TTPs."
  ["osint-tools"]="Open Source Intelligence tools and techniques applied to cyber investigations."
  ["case-studies"]="Real-world cyber cases analyzed from a threat intelligence perspective."
  ["reports"]="Technical reports, tutorials, and deep-dive writeups."
)

for dir in "${!sections[@]}"; do
  mkdir -p "$dir"
  cat > "$dir/index.md" <<EOF
---
layout: page
title: ${dir//-/ }
---

${sections[$dir]}
EOF
  echo "✔️ Folder '$dir' created with index.md"
done
