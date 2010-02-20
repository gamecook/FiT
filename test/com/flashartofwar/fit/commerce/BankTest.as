package com.flashartofwar.fit.commerce
{
    import com.flashartofwar.fit.commerce.Bank;

    import org.flexunit.Assert;

    public class BankTest extends Bank
    {
        public function BankTest()
        {
            super(2500, .1299, 30);
        }

        [Test]
        public function testCalculateInterest():void
        {
            Assert.assertEquals(calculateInterest(_interest, 12, _loan, 3), 81);
        }

        [Test]
        public function testInterest():void
        {
            nextDay(3,12);
            Assert.assertEquals(loan, 2581);

        }

        [Test]
        public function testGetLoad():void
        {
            Assert.assertEquals(loan, 2500);
        }

        [Test]
        public function testGetSavings():void
        {
            Assert.assertEquals(savings, 30);
        }

        [Test]
        public function testGetInterest():void
        {
            Assert.assertEquals(interest, .1299);
        }

        [Test]
        public function testPayOffLoan():void
        {
            payOffLoan(1000);

            Assert.assertEquals(loan, 1500);
        }
        [Test]
        public function testTakeOutLoan():void
        {
            takeOutLoan(500);
            Assert.assertEquals(loan, 3000);
        }

        [Test]
        public function testRemainderPayOffLoan():void
        {
            var leftOver:Number = payOffLoan(3000);
            Assert.assertEquals(leftOver, 500);
        }

        [Test]
        public function testBalanceOverPayOffLoan():void
        {
            var leftOver:Number = payOffLoan(3000);
            Assert.assertEquals(loan, 0);
        }

        [Test]
        public function testBalanceOverPayOffLoanReturn():void
        {
            var leftOver:Number = payOffLoan(3000);
            Assert.assertEquals(leftOver, 500);
        }

        [Test]
        public function testDepositIntoSavings():void
        {
            depositIntoSavings(1000);
            Assert.assertEquals(savings, 1030)
        }


    }
}