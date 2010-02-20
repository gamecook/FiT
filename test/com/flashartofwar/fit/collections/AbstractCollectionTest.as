package com.flashartofwar.fit.collections
{
    import com.flashartofwar.fit.collections.AbstractCollection;

    import org.flexunit.Assert;

    public class AbstractCollectionTest extends AbstractCollection
    {
        public function AbstractCollectionTest()
        {
            super(this);
        }

        [Before]
        public function addItems():void
        {
            items = ["ItemA", "ItemB", "ItemC"];
        }

        [Test]
        public function testAdd():void
        {
            var id:int = add("ItemD");
            Assert.assertEquals(items[id-1], "ItemD");
        }

        [Test]
        public function testRemove():void
        {
            remove("ItemA");
            Assert.assertEquals(items.indexOf("ItemA"), -1);
        }

        [Test]
        public function testTotal():void
        {
            add("ItemD");
            add("ItemE");
            add("ItemF");

            Assert.assertEquals(total, 6);
        }

        [Test]
        public function testAddMoreItems():void
        {
            items = ["ItemA","ItemD", "ItemE"];
            Assert.assertEquals(total, 5);
        }
        
    }
}