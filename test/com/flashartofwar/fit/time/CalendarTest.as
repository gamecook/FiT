package com.flashartofwar.fit.time
{
    import com.flashartofwar.fit.time.Calendar;

    import org.flexunit.Assert;

    public class CalendarTest
    {
        public function CalendarTest()
        {
        }

        [Test]
        public function testCreateCalendar():void
        {
            var cal:Calendar = new Calendar(10);
            Assert.assertEquals(cal.days, 10);
        }

        [Test]
        public function testHasNextDayPass():void
        {
            var cal:Calendar = new Calendar(10);
            cal.nextDay();
            Assert.assertTrue(cal.hasNextDay());
        }

        [Test]
        public function testHasNextDayFail():void
        {
            var cal:Calendar = new Calendar(1);
            cal.nextDay();
            Assert.assertFalse(cal.hasNextDay());
        }

        [Test]
        public function testNextDay():void
        {
            var cal:Calendar = new Calendar(10);
            cal.nextDay();
            Assert.assertEquals(cal.days, 9);
        }

        [Test]
        public function testTotaldays():void
        {
            var cal:Calendar = new Calendar(10);
            cal.nextDay();
            Assert.assertEquals(cal.totalDays, 10);
        }

        [Test]
        public function testNextDayBy5():void
        {
            var cal:Calendar = new Calendar(10);
            cal.nextDay(5);
            Assert.assertEquals(cal.days, 5);
        }
    }
}