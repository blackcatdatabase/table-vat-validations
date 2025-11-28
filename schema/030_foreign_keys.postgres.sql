-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  vat_validations

ALTER TABLE vat_validations ADD CONSTRAINT fk_vat_validations_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
