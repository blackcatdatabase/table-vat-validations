# vat_validations

External VAT ID validation results (cache).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| country_iso2 | CHAR(2) | NO |  | Country ISO2 of VAT id. |
| checked_at | TIMESTAMPTZ(6) | NO |  | When checked (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| raw | JSONB | YES |  | Raw JSON response payload. |
| valid | BOOLEAN | NO |  | Validation result (true/false). |
| vat_id | VARCHAR(50) | NO |  | VAT identifier as provided. |

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
| vw_vat_validations | mysql | algorithm=MERGE, security=INVOKER | [packages\vat-validations\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/vat-validations/schema/040_views.mysql.sql) |
| vw_vat_validations | postgres |  | [packages\vat-validations\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/vat-validations/schema/040_views.postgres.sql) |
