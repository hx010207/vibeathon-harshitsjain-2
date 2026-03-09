
# VIBEATHON Round 2 PRD: Link Management Platform

## Architecture
```
Supabase Auth → User Dashboard → Links CRUD
localStorage cache | Hash routing: /#/lnk_abc123
Google Apps Script backup (Round 1 compatibility)
```

## New Features Added
1. **Auth**: Supabase email/password (login/register/logout)
2. **Expiry**: `max_clicks` field → block redirect after limit
3. **Toggle**: `is_active` boolean → show "inactive" page
4. **Edit**: Inline URL update → instant redirect change
5. **Timestamps**: `created_at` + `last_accessed` in dashboard
6. **Persistence**: Supabase Postgres (user-scoped)

## Verification Mapping ✓
| Req | Implementation |
|-----|----------------|
| Auth/Login | Supabase Auth |
| Dashboard | User-specific links table |
| Click limit | `max_clicks` vs `current_clicks` |
| Enable/Disable | `is_active` toggle |
| Edit URL | Inline update |
| Logout/Login | Supabase session |

## Tech Stack
- Auth/DB: Supabase (free tier)
- UI: Vanilla JS + CSS Grid
- Routing: Hash-based
- Deploy: GitHub Pages

**Live**: hx010207.github.io/vibeathon-harshitsjain-2/
