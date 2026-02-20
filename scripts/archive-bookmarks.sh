#!/bin/zsh
# Daily bookmark archiver for deeper research
cd /tmp/ai-daily-digest
date_str=$(date +%Y-%m-%d)
mkdir -p docs/bookmarks/$date_str

~/.local/bin/x-cli -j me bookmarks --max 100 > bookmarks-$date_str.json

processed=$(cat processed-bookmarks.json 2>/dev/null || echo '[]')

jq -c '.[] | select(.created_at > (now - 2d) and (.id | in($ARGS.named.processed | fromstream(indices | select(.==1)))) | select(.article.title? | test("(?i)(ai|agent|claw|claude|open|model|prompt|skill|codex|harness|anthropic|token)"))' bookmarks-$date_str.json --argjson processed "$processed" | while read b; do
  id=$(echo "$b" | jq -r .id)
  title=$(echo "$b" | jq -r '.article.title // (.text | gsub(\"https.*\";\"\") | split(\" \")[0:5]|join(\" \")) // \"Untitled\"' | sed 's/[^a-zA-Z0-9 ]/_/g')
  url=$(echo "$b" | jq -r '.entities.urls[0].unwound_url // empty')
  created=$(echo "$b" | jq -r .created_at)
  metrics=$(echo "$b" | jq -r '.public_metrics | tojson')
  
  cat > "docs/bookmarks/$date_str/${id}.md" << EOF
# X Bookmark: $title

**ID**: $id  
**Date**: $created  
**URL**: $url  
**Metrics**: $metrics

## Raw Tweet
\`\`\`json
$b
\`\`\`

## Full Article
*(Pending fetch for research)*
EOF
  
  if [ -n "$url" ]; then
    content=$(curl -s "$url" | pandoc -f html -t markdown --wrap=none 2>/dev/null | head -2000)
    echo "## Article Content\n\n$content" >> "docs/bookmarks/$date_str/${id}.md"
  fi
done

echo $b | jq -r '.[].id' >> processed-bookmarks.json
git add docs/bookmarks bookmarks-$date_str.json processed-bookmarks.json
git commit -m "Archive $date_str bookmarks + content" || true
git push
