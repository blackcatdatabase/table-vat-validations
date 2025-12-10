-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  vat_validations

CREATE TABLE IF NOT EXISTS vat_validations (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  vat_id VARCHAR(50) NOT NULL,
  country_iso2 CHAR(2) NOT NULL,
  valid BOOLEAN NOT NULL,
  checked_at DATETIME(6) NOT NULL,
  raw JSON NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
