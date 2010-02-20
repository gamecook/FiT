package com.flashartofwar.fit.player
{
    import com.flashartofwar.fit.player.Player;

    import org.flexunit.Assert;

    public class PlayerTest
    {
        private var player:Player;

        public function PlayerTest()
        {
        }

        [Before]
        public function createPlayer():void
        {
            player = new Player("John Doe");
        }

        [Test]
        public function testPlayerName():void
        {
            Assert.assertEquals(player.name, "John Doe");
        }

    }
}