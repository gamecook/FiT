package com.flashartofwar.fit.collections
{
    import com.flashartofwar.fit.*;
    import com.flashartofwar.fit.collections.Store;

    import org.flexunit.Assert;

    public class StoreTest
    {
        private var store:Store;
        
        public function StoreTest()
        {
        }

        [Before]
        public function createStore():void
        {
            store = new Store();
            store.items = ["Item1", "Item2", "Item3"];
            store.prices = [10, 20, 30];
            store.ranges = [2,1,10];
        }

        [Test]
        public function testGetItemInfo():void
        {
            var item:Object = store.getItemInfo("Item1");

            Assert.assertEquals(item.name, "Item1");
            Assert.assertEquals(item.price, 10);
            Assert.assertEquals(item.inventory, 0);
        }


    }
}