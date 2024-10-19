/*
  Warnings:

  - You are about to drop the column `badMatches` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `percentage` on the `stats` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `stats` DROP COLUMN `badMatches`,
    DROP COLUMN `percentage`,
    ADD COLUMN `badHandicap` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `badOver` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `badUnder` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `percentageHandicap` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `percentageOver` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `percentageunder` DOUBLE NOT NULL DEFAULT 100,
    MODIFY `matches` INTEGER NOT NULL DEFAULT 0;
