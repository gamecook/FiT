package com.flashartofwar.fit.commerce
{
    import com.flashartofwar.fit.commerce.Wallet;

    import org.flexunit.Assert;

    public class WalletTest
    {
        public function WalletTest()
        {
        }

        [Test]
        public function testNewWallet():void
        {
            var wallet:Wallet = new Wallet(100);
            Assert.assertEquals(wallet.total, 100);
        }

        [Test]
        public function testSetMoneyInWallet():void
        {
            var wallet:Wallet = new Wallet(100);
            wallet.total += 200;
            Assert.assertEquals(wallet.total, 300);
        }
        
    }
}