package com.flashartofwar.fit.collections
{
    public class Map extends AbstractCollection
    {
        protected var _currentLocation:int;
        private var lastID:int;

        /**
         * The map represent a collection of locations.
         * It tracks the current and last location visited.
         * 
         */
        public function Map()
        {
            super(this);
        }

        /**
         * Tells the map what location is currently
         * being visited.
         * 
         * @param id
         */
        public function gotoLocation(id:int):void
        {
            if (_currentLocation)
                lastID = _currentLocation;
            
            _currentLocation = id;
        }

        /**
         * Returns the current loctaion.
         * 
         * @return
         */
        public function get currentLocation():String
        {
            return items[_currentLocation];
        }

        /**
         * Returns the location itself by ID.
         * 
         * @param id
         * @return
         */
        public function getLocation(id:int):String
        {
            return items[id];
        }

        /**
         * returns the last location visited.
         * 
         * @return
         */
        public function get lastLocation():String
        {
            return items[lastID];
        }

    }
}