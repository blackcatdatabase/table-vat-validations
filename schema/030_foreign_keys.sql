-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: vat_validations
ALTER TABLE vat_validations ADD CONSTRAINT fk_vat_validations_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
