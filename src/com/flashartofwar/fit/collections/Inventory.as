package com.flashartofwar.fit.collections
{
    public class Inventory extends AbstractCollection
    {
        protected var _total:int = 0;

        /**
         * 
         * Inventory is a basic collection class which allows
         * you to add an item and specify the total amount of
         * that item. Since this is a departure from the base
         * class AbstractCollection, the default add and removed
         * are not used. In their place is addToInventory and
         * removeFromInventory.
         * 
         */
        public function Inventory()
        {
            super(this);
        }

        /**
         * This method is not used by the Inventory clas and
         * will throw an error if you try to use it.
         *
         * @param item
         * @return
         */
        override public function add(item:Object):Number
        {
            throw new Error("Inventory requieres you to use addToInventory instead of add()");
        }

        /**
         * This method is not used by the Inventory clas and
         * will throw an error if you try to use it.
         * 
         * @param item
         */
        override public function remove(item:Object):void
        {
            throw new Error("Inventory requieres you to use removeFromInventory instead of remove()");
        }

        /**
         * Use this instead of add. This method allows you to
         * add an item by name and give it a total representing
         * how many of that item is present.
         * 
         * @param name
         * @param total
         */
        public function addToInventory(name:String, total:Number):void
        {
            _items[name] = !_items[name] ? total : _items[name]+total;
            _total ++;
        }

        /**
         * Use this instead of remove. This method allows you
         * to remove the amount of an item. When an item's
         * total is zero it is automatically removed from the
         * inventory.
         *
         * @param name
         * @param total
         */
        public function removeFromInventory(name:String, total:Number):void
        {
            if((_items[name] < total) || !_items[name])
            {
                throw new Error("RangeError");
            }
            else
            {
                _items[name] -= total;
            }

            if(_items[name] == 0)
            {
                delete _items[name];
                _total --;
            }
        }

        /**
         * Returns the total amount of a particular item.
         * 
         * @param id
         * @return
         */
        public function getTotalOfItem(id:String):Number
        {
            return _items[id];
        }

        /**
         * Returns the total amount of items in the
         * Inventory.
         * 
         * @return
         */
        override public function get total():int
        {
            return _total;
        }
    }
}