package com.flashartofwar.fit.collections
{
    import com.flashartofwar.fit.collections.Map;

    import org.flexunit.Assert;

    public class MapTest
    {
        private var map:Map;
        
        public function MapTest()
        {
        }

        [Before]
		public function setupMap():void
        {
            map = new Map();
            map.items = ["LocationA", "LocationB", "LocationC"];
        }

        [Test]
        public function testLocationA():void
        {
            Assert.assertEquals(map.items[0], "LocationA");
        }

        [Test]
        public function testAddLocation():void
        {
            var id:Number = map.add("LocationD");
            Assert.assertEquals(map.items[id-1], "LocationD");
        }

        [Test]
        public function testCurrentLocation():void
        {
            map.gotoLocation(1);
            Assert.assertEquals(map.currentLocation, map.items[1]);
        }

        [Test]
        public function testGetLocation():void
        {
            Assert.assertEquals(map.getLocation(1), "LocationB");
        }

        [Test]
        public function testLastLocation():void
        {
            map.gotoLocation(2);
            map.gotoLocation(0);
            Assert.assertEquals(map.lastLocation, "LocationC");
        }
    }
}