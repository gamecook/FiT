package com.flashartofwar.fit.player
{

    public class Player
    {
        private var _name:String;

        /**
         * Basic container for player data.
         *
         * @param name
         */
        public function Player(name:String)
        {
            _name = name;
        }

        /**
         * Returns the name of the player.
         * 
         * @return
         */
        public function get name():String
        {
            return _name;
        }

        /**
         * Sets the name of the player.
         * 
         * @param value
         */
        public function set name(value:String):void
        {
            _name = value;
        }
    }
}