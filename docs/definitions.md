# vat_validations

External VAT ID validation results (cache).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| vat_id | VARCHAR(50) | NO |  | VAT identifier as provided. |
| country_iso2 | CHAR(2) | NO |  | Country ISO2 of VAT id. |
| valid | BOOLEAN | NO |  | Validation result (true/false). |
| checked_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO |  | When checked (UTC). |
| raw | mysql: JSON / postgres: JSONB | YES |  | Raw JSON response payload. |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_vat_validations_country | country_iso2 | countries(iso2) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_vat_validations_country | country_iso2 | countries(iso2) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_vat_validations | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_vat_validations | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
