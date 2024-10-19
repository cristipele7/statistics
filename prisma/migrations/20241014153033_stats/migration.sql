/*
  Warnings:

  - You are about to drop the column `pHandicap` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `pOver` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `pUnder` on the `stats` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `stats` DROP COLUMN `pHandicap`,
    DROP COLUMN `pOver`,
    DROP COLUMN `pUnder`,
    ADD COLUMN `handicapPerc` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `overPerc` DOUBLE NOT NULL DEFAULT 100,
    ADD COLUMN `underPerc` DOUBLE NOT NULL DEFAULT 100;
