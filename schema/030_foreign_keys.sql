-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: vat_validations
ALTER TABLE vat_validations ADD CONSTRAINT fk_vat_validations_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
