package com.flashartofwar.fit.time
{
    public class Calendar
    {
        private var _days:Number;

        private var _totalDays:Number;

        /**
         * This is a simple turn managing class. Each
         * turn is represented by a day, calling the
         * nextDat method advances the turns.
         * 
         * @param days
         */
        public function Calendar(days:Number = 60)
        {
            _days = _totalDays = days;
        }

        /**
         * Returns the number of days left in the
         * calendar.
         * 
         * @return
         */
        public function get days():Number
        {
            return _days;
        }

        /**
         * Sets the total number of days in the
         * calender.
         * 
         * @param value
         */
        public function set days(value:Number):void
        {
            _days = value;
        }

        /**
         * Returns the total number of days in the
         * calender.
         * 
         * @return
         */
        public function get totalDays():Number
        {
            return _totalDays;
        }

        /**
         * Checks to see if a day exists.
         * @return
         */
        public function hasNextDay():Boolean
        {
            return _days < 1 ? false : true;
        }

        /**
         * Decreases the number of days by 1
         */
        public function nextDay(total:Number = 1):void
        {
            _days -=total;
        }

    }
}