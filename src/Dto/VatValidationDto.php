<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\VatValidations\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class VatValidationDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $vatId,
        public readonly string $countryIso2,
        public readonly bool $valid,
        public readonly \DateTimeImmutable $checkedAt,
        public readonly array|null $raw
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
