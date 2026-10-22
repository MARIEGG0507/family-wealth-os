-- CreateEnum
CREATE TYPE "OwnershipType" AS ENUM ('SELF', 'SPOUSE', 'JOINT');

-- AlterTable
ALTER TABLE "Account" ADD COLUMN     "ownership" "OwnershipType" NOT NULL DEFAULT 'SELF';
