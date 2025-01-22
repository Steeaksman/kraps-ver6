/*
  Warnings:

  - You are about to drop the column `createdAt` on the `tableReports` table. All the data in the column will be lost.
  - You are about to drop the column `published` on the `tableReports` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "tableReports" DROP COLUMN "createdAt",
DROP COLUMN "published";
