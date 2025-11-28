-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  vat_validations

-- Contract view for [vat_validations]
-- Hides raw provider response; adds freshness flag (30 days).
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_vat_validations AS
SELECT
  id,
  vat_id,
  country_iso2,
  valid,
  checked_at,
  (checked_at > NOW() - INTERVAL 30 DAY) AS is_fresh
FROM vat_validations;
