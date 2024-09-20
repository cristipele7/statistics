/*
  Warnings:

  - You are about to alter the column `round` on the `stats` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Double`.

*/
-- AlterTable
ALTER TABLE `stats` MODIFY `round` DOUBLE NOT NULL;
