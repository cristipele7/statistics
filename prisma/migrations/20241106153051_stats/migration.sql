/*
  Warnings:

  - You are about to drop the column `handicap` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `handicapPerc` on the `stats` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `stats` DROP COLUMN `handicap`,
    DROP COLUMN `handicapPerc`;
