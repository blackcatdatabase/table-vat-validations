# Definition – vat_validations

External VAT ID validation results (cache).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| vat_id | VARCHAR(50) | NO | — | VAT identifier as provided. |  |
| country_iso2 | CHAR(2) | NO | — | Country ISO2 of VAT id. |  |
| valid | BOOLEAN | NO | — | Validation result (true/false). |  |
| checked_at | DATETIME(6) | NO | — | When checked (UTC). |  |
| raw | JSON | YES | — | Raw JSON response payload. |  |
