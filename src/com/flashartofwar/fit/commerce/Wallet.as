package com.flashartofwar.fit.commerce
{
    public class Wallet
    {
        private var _total:Number = 0;

        /**
         * The wallet is a basic container for currency.
         * It simply allows you to store and retrieve
         * the value inside of it.
         *
         * @param value
         */
        public function Wallet(value:Number)
        {
            _total = value;
        }

        /**
         * Total in wallet.
         * 
         * @return
         */
        public function get total():Number
        {
            return _total;
        }

        /**
         * Change the value of the total.
         *
         * @param value
         */
        public function set total(value:Number):void
        {
            _total = value;
        }

        /**
         * Adds to the wallet's value.
         *
         * @param value
         */
        public function add(value:Number):Number
        {
            return total += value;
        }

        /**
         * Adds to the wallet's value.
         *
         * @param value
         */
        public function subtract(value:Number):Number
        {
            return total -= value;
        }
    }
}