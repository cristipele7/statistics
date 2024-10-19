/*
  Warnings:

  - You are about to drop the column `badHandicap` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `badOver` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `badUnder` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `percentageHandicap` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `percentageOver` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `percentageunder` on the `stats` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `stats` DROP COLUMN `badHandicap`,
    DROP COLUMN `badOver`,
    DROP COLUMN `badUnder`,
    DROP COLUMN `percentageHandicap`,
    DROP COLUMN `percentageOver`,
    DROP COLUMN `percentageunder`,
    ADD COLUMN `handicap` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `over` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `pHandicap` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `pOver` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `pUnder` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `under` INTEGER NOT NULL DEFAULT 0;
