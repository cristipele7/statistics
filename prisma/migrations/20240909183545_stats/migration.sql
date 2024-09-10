/*
  Warnings:

  - You are about to alter the column `percentage` on the `stats` table. The data in that column could be lost. The data in that column will be cast from `Decimal(10,0)` to `Double`.

*/
-- AlterTable
ALTER TABLE `stats` MODIFY `percentage` DOUBLE NOT NULL;
