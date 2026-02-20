#!/bin/zsh
cd /tmp/ai-daily-digest
date_str=$(date +%Y-%m-%d)
mkdir -p docs/bookmarks/$date_str
jq -c '.[]' bookmarks-full.json | while IFS= read -r bookmark; do
  id=$(echo $bookmark | jq -r '.id')
  title=$(echo $bookmark | jq -r '.article.title // (.text | split(\" \")[0:3] | join(\" \")) // \"Untitled\"' | sed 's/[|?<>]/_/g')
  url=$(echo $bookmark | jq -r '.entities.urls[0].unwound_url // empty')
  created=$(echo $bookmark | jq -r '.created_at')
  metrics=$(echo $bookmark | jq -r '.public_metrics | tojson')
  cat &lt;&lt; EOF &gt; "docs/bookmarks/$date_str/${id}.md"
# X Bookmark: $title

**ID**: $id
**Date**: $created
**URL**: $url
**Metrics**: $metrics

## Raw Tweet
\`\`\`json
$(echo $bookmark | jq .)
\`\`\`

$( [ -n "$url" ] &amp;&amp; echo "## Full Content (fetch pending)" || echo "No article URL" )

EOF
done
echo "Saved \$(jq length bookmarks-full.json) bookmarks."
