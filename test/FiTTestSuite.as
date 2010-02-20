package  
{
    import com.flashartofwar.fit.collections.AbstractCollectionTest;
    import com.flashartofwar.fit.commerce.BankTest;
    import com.flashartofwar.fit.time.CalendarTest;
    import com.flashartofwar.fit.collections.InventoryTest;
    import com.flashartofwar.fit.collections.MapTest;
    import com.flashartofwar.fit.player.PlayerTest;
    import com.flashartofwar.fit.collections.StoreTest;
    import com.flashartofwar.fit.commerce.WalletTest;

    [Suite]

	[RunWith("org.flexunit.runners.Suite")]

	public class FiTTestSuite
	{

		public var test1 : CalendarTest;
		public var test2 : BankTest;
		public var test3 : WalletTest;
		public var test4 : MapTest;
		public var test5 : PlayerTest;
		public var test6 : InventoryTest;
		public var test7 : AbstractCollectionTest;
		public var test8 : StoreTest;
	}
}