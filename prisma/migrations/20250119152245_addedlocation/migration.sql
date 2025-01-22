/*
  Warnings:

  - Added the required column `casinoLocation` to the `tableReports` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "tableReports" ADD COLUMN     "casinoLocation" TEXT NOT NULL,
ALTER COLUMN "createdAt" SET DEFAULT now();
