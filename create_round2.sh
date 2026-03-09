#!/bin/bash
mkdir -p vibeathon-harshitsjain-2
cd vibeathon-harshitsjain-2

# Create all files (user pastes content)
echo "✅ Round 2 repo ready! Paste file contents above."
echo "Run: git init && git add . && git push (post-verification)"

# Supabase quickstart note
cat > SUPABASE-SETUP.md << 'EOF'
1. supabase.com → New project (free)
2. Settings → API → Copy URL/anon key
3. index.html lines 10-11 ← paste keys
4. SQL Editor → Run schema (deploy.md)
EOF
