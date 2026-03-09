
# Deploy Guide (45s)

## 1. GitHub Pages
```bash
git add .
git commit -m "Round 2 verified"
git push origin main
```
Repo → Settings → Pages → Deploy from main

## 2. Supabase Setup (Round 2 only)
1. supabase.com → New project (free)
2. Copy URL + anon key to index.html (lines 10-11)
3. SQL Editor → Run:
```sql
create table links (
  id text primary key,
  user_id uuid references auth.users,
  original_url text,
  short_url text,
  max_clicks integer,
  current_clicks integer default 0,
  is_active boolean default true,
  created_at timestamptz default now(),
  last_accessed timestamptz
);
```

Live URL: hx010207.github.io/vibeathon-harshitsjain-2/
