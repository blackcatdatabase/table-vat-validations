-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  vat_validations

ALTER TABLE vat_validations ADD CONSTRAINT fk_vat_validations_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
