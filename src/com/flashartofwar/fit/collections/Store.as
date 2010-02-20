package com.flashartofwar.fit.collections
{
    public class Store extends AbstractCollection
    {
        protected var _prices:Array = [];
        protected var _inventory:Array = [];
        protected var _ranges:Array = [];
        protected var history:Array;

        /**
         * The Store represents a collection of items
         * with their associated prices. The store also
         * manages the inventory of each item and its
         * fluctuation in price.
         * 
         */
        public function Store()
        {
            super(this);
        }

        protected function populateArray(target:Array, values:Array):void
        {
            var total:int = values.length;
            var i:int;

            for (i = 0; i < total; i++)
            {
                if (target[i])
                    target = values[i];
                else
                    target[i] = values[i];
            }
        }

        /**
         * Sets the prices for each item based on the
         * array supplied. The array should match up
         * with the total number of items.
         * 
         * @param values
         */
        public function set prices(values:Array):void
        {
            populateArray(_prices, values);
        }

        /**
         * Returns an object based on the information of
         * a particular item. In the object is it's name,
         * price and inventory.
         * 
         * @param id
         * @return
         */
        public function getItemInfo(id:String):Object
        {
            var index:int = items.indexOf(id);

            if (index == -1)
            {
                return null;
            }
            else
            {
                return {name:_items[index], price:_prices[index], inventory: _inventory[index]};
            }
        }

        /**
         * This refreshes the prices of each of the
         * items. It uses the range values to calculate
         * the change in price.
         * 
         */
        public function refresh():void
        {
            var i:int;
            for (i = 0; i < total; i++)
            {

            }
        }

        /**
         * Represents the posative and negative range an
         * item may change in price from refresh to
         * refresh.
         * 
         * @param values
         */
        public function set ranges(values:Array):void
        {
            populateArray(_ranges, values);
        }

        /**
         * Adds an item to the store. It also adds place
         * holder data for the inventory, price and range.
         * @param id
         * @return
         */
        override public function add(id:Object):Number
        {
            var index:Number = super.add(id);
            var arrayIndex:int = index-1;
            if(!_prices[arrayIndex]) _prices[arrayIndex] = 0;
            if(!_inventory[arrayIndex]) _inventory[arrayIndex] = 0;
            if(!_ranges[arrayIndex]) _ranges[arrayIndex] = 0;

            return index;
        }
    }
}