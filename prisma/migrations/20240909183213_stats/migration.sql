/*
  Warnings:

  - Added the required column `percentage` to the `Stats` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `stats` ADD COLUMN `percentage` DECIMAL NOT NULL;
