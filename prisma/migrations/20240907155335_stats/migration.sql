-- CreateTable
CREATE TABLE `Stats` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `country` VARCHAR(191) NOT NULL,
    `matches` INTEGER NOT NULL,
    `badMatches` INTEGER NOT NULL,
    `round` INTEGER NOT NULL,

    UNIQUE INDEX `Stats_country_key`(`country`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
