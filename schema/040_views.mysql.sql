-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
