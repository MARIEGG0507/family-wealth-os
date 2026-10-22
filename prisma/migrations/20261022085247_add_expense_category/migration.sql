-- CreateEnum
CREATE TYPE "ExpenseCategory" AS ENUM ('HOUSING', 'FOOD', 'TRANSPORT', 'EDUCATION', 'INSURANCE', 'HEALTHCARE', 'SHOPPING', 'ENTERTAINMENT', 'TAX', 'OTHER');

-- AlterTable
ALTER TABLE "CashTransaction" ADD COLUMN     "category" "ExpenseCategory";
