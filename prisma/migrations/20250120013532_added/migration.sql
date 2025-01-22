-- AlterTable
ALTER TABLE "tableReports" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT now(),
ADD COLUMN     "published" BOOLEAN NOT NULL DEFAULT false;
