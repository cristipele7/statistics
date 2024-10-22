/*
  Warnings:

  - You are about to drop the column `over` on the `stats` table. All the data in the column will be lost.
  - You are about to drop the column `overPerc` on the `stats` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `stats` DROP COLUMN `over`,
    DROP COLUMN `overPerc`;
