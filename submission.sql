
-- Block 33: Mainframe Override
-- PostgreSQL Workshop

-- 1. Find the April 2048 forum post.
SELECT *
FROM forum_posts
WHERE content ILIKE '%EmptyStack%'
  AND content ILIKE '%dad%'
  AND created_at >= '2048-04-01'
  AND created_at < '2048-05-01';

-- 2. Find the author's name.
SELECT first_name, last_name
FROM forum_accounts
WHERE username = 'FOUND_USERNAME';

-- 3. Find accounts with the same surname.
SELECT *
FROM forum_accounts
WHERE last_name = 'FOUND_LAST_NAME';

-- 4. Find matching employee records.
SELECT *
FROM emptystack_accounts
WHERE last_name = 'FOUND_LAST_NAME';

-- 5. Find the taxi project message.
-- Run after loading the internal data.
SELECT *
FROM emptystack_messages
WHERE content ILIKE '%taxi%';

-- 6. Find the admin account.
SELECT *
FROM emptystack_accounts
WHERE username = 'ADMIN_USERNAME';

-- 7. Find the taxi project ID.
SELECT *
FROM emptystack_projects
WHERE code = 'PROJECT_CODE';
  