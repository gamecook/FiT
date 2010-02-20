package com.flashartofwar.fit.commerce
{
    public class Bank
    {
        protected var _savings:Number;

        protected var _interest:Number;

        protected var _loan:Number;

        /**
         * The bank manges a single loan and savings value.
         * It is capable of adding interest to the load each
         * day.
         *
         * @param loan
         * @param interest
         * @param savings
         */
        public function Bank(loan:Number, interest:Number, savings:Number = 0)
        {
            _loan = loan;
            _interest = interest;
            _savings = savings;
        }

        /**
         * Returns the total amount of savings in the bank.
         * 
         * @return
         */
        public function get savings():Number
        {
            return _savings;
        }

        /**
         * Returns the total amount of the load in the bank.
         * 
         * @return
         */
        public function get loan():Number
        {
            return _loan;
        }

        /**
         * Returns the interest used for the load.
         * 
         * @return
         */
        public function get interest():Number
        {
            return _interest;
        }


        /**
         * Calculates the interest on the loan.
         * 
         * @param currentDay
         * @param totalDays
         */
        public function nextDay(currentDay:Number, totalDays:Number):void
        {
            if(loan)
            {
                var interest:Number = calculateInterest(_interest, totalDays, _loan, currentDay);
                _loan += interest;
            }
        }

        /**
         * Pays off the loan. Returns the remainder if over.
         * 
         * @param value
         * @return
         */
        public function payOffLoan(value:Number):Number
        {
            _loan -= value;

            var remainder:Number = 0;

            if(loan < 0)
            {
                remainder = loan *-1;
                _loan = 0;
            }

            return remainder;

        }

        /**
         * takes money out of savings.
         *
         * @param value
         * @return
         */
        public function withdrawFromSavings(value:Number):Number
        {
           if(value > savings)
           {
               value = _savings;
               _savings = 0;
           }
            else
           {
                _savings -= value;
           }

            return value;
        }

        /**
         * Adds to the loan.
         *
         * @param value
         */
        public function takeOutLoan(value:Number):void
        {
            _loan += value;
        }

        /**
         * Adds money to your savings account.
         * 
         * @param value
         */
        public function depositIntoSavings(value:Number):void
        {
            _savings += value;
        }


        protected function calculateInterest(interest:Number, totalTime:Number, balance:Number, timeElapsed:Number, round:Boolean = true):Number
        {
            var value:Number = ((interest/totalTime) * balance) * timeElapsed;

            return round ? Math.round(value) : value;
        }
    }
}