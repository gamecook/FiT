package com.flashartofwar.fit.collections
{
    import flash.errors.IllegalOperationError;

    public class AbstractCollection
    {
        protected var _items:Array = [];

        /**
         * The AbstractCollection represents a core collection system
         * of items. You can add, remove, and get the total number
         * of items being managed. This class is intended to be
         * extended to add custom collection logic where needed. 
         *
         * @param self
         */
        public function AbstractCollection(self:AbstractCollection)
        {
            if (self != this)
                throw new IllegalOperationError("AbstractCollection cannot be instantiated directly.");
        }

        /**
         * Adds an item to the collection.
         * 
         * @param id
         * @return
         */
        public function add(id:Object):Number
        {
            if(_items.indexOf(id) == -1)
            {
                return _items.push(id);
            }
            else
            {
                return _items.indexOf(id);
            }
        }

        /**
         * Removes an item from the collection.
         *
         * @param id
         */
        public function remove(id:Object):void
        {
            var index:int = _items.indexOf(id);
            if(index != -1)
            {
                _items.splice(index,1);
            }
        }

        /**
         * Returns the master list of items in the collection.
         *
         * @return
         */
        public function get items():Array
        {
            return _items;
        }

        /**
         * Adds and Array of items to the collection.
         * 
         * @param items
         */
        public function set items(items:Array):void
        {
            var total:int = items.length;
            var i:int;
            
            for (i = 0; i < total; i++)
            {
                add(items[i])
            }
        }

        /**
         * Returns the total number of items.
         * 
         * @return
         */
        public function get total():int
        {
            return _items.length;
        }
        
    }
}