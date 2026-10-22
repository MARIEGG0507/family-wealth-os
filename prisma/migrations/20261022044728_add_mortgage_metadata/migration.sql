-- CreateTable
CREATE TABLE "MortgageMetadata" (
    "id" TEXT NOT NULL,
    "accountId" TEXT NOT NULL,
    "bankName" TEXT,
    "principalAmount" DECIMAL(28,2) NOT NULL,
    "interestRate" DECIMAL(8,4) NOT NULL,
    "monthlyPayment" DECIMAL(28,2) NOT NULL,
    "startDate" TIMESTAMP(3) NOT NULL,
    "endDate" TIMESTAMP(3) NOT NULL,
    "totalPeriods" INTEGER NOT NULL,
    "paidPeriods" INTEGER NOT NULL,
    "remainingPeriods" INTEGER NOT NULL,
    "remainingBalance" DECIMAL(28,2) NOT NULL,
    "nextPaymentDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MortgageMetadata_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "MortgageMetadata_accountId_key" ON "MortgageMetadata"("accountId");

-- AddForeignKey
ALTER TABLE "MortgageMetadata" ADD CONSTRAINT "MortgageMetadata_accountId_fkey" FOREIGN KEY ("accountId") REFERENCES "Account"("id") ON DELETE CASCADE ON UPDATE CASCADE;
