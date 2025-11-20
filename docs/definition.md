<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – vat_validations

External VAT ID validation results (cache).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| vat_id | VARCHAR(50) | NO | — | VAT identifier as provided. |  |
| country_iso2 | CHAR(2) | NO | — | Country ISO2 of VAT id. |  |
| valid | BOOLEAN | NO | — | Validation result (true/false). |  |
| checked_at | TIMESTAMPTZ(6) | NO | — | When checked (UTC). |  |
| raw | JSONB | YES | — | Raw JSON response payload. |  |