package com.flashartofwar.fit.collections
{
    import com.flashartofwar.fit.collections.Inventory;

    import org.flexunit.Assert;

    public class InventoryTest
    {
        private var inventory:Inventory;

        public function InventoryTest()
        {
        }

        [Before]
        public function createInventory():void
        {
            inventory = new Inventory();
        }

        [Test]
        public function testTotalItemsIsZero():void
        {
            Assert.assertEquals(inventory.total, 0);
        }

        [Test]
        public function testTotalItems():void
        {
            inventory.addToInventory("foo", 30);
            inventory.addToInventory("bar", 20);
            
            Assert.assertEquals(inventory.total, 2);
        }

        [Test]
        public function testRemoveFromInventoryItem():void
        {
            inventory.addToInventory("foobar", 20);
            inventory.removeFromInventory("foobar", 20);

            Assert.assertEquals(inventory.total, 0);
        }

        [Test(expected="Error")]
        public function testRemoveFromInventoryItemOutOfRange():void
        {
            inventory.addToInventory("foobar", 20);
            inventory.removeFromInventory("foobar", 21);
        }

        [Test]
        public function testAddToInventoryItem():void
        {
            inventory.addToInventory("foobar", 20);
            Assert.assertEquals(inventory.getTotalOfItem("foobar"), 20);
        }

        [Test]
        public function testAddToInventoryOntoItem():void
        {
            inventory.addToInventory("foobar", 20);
            inventory.addToInventory("foobar", 30);
            Assert.assertEquals(inventory.getTotalOfItem("foobar"), 50);
        }

        [Test]
        public function testRemoveFromInventoryFromItem():void
        {
            inventory.addToInventory("foobar", 20);
            inventory.removeFromInventory("foobar", 10);
            Assert.assertEquals(inventory.getTotalOfItem("foobar"), 10);
        }
    }
}