-- Auto-generated from schema-views-postgres.yaml (map@sha1:A7406D76A2DD55741B4DC6A4EC831681A19168EB)
-- engine: postgres
-- table:  vat_validations

-- Contract view for [vat_validations]
-- Hides raw provider response; adds freshness flag (30 days).
CREATE OR REPLACE VIEW vw_vat_validations AS
SELECT
  id,
  vat_id,
  country_iso2,
  valid,
  checked_at,
  (checked_at > now() - interval '30 days') AS is_fresh
FROM vat_validations;
