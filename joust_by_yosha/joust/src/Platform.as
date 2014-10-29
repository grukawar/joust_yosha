package src 
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
    
	
	/**
	 * ...
	 * @author The Hitman
	 */
	public class Platform extends Sprite
	{
		//adding the art (perminent) (50% complete)
		// must still make them collide with the player
		[Embed(source="../lib/platform_one.png")]
		private var ArtPlatform_one:Class;
		[Embed(source="../lib/platform_two.png")]
		private var ArtPlatform_two:Class;
		[Embed(source="../lib/platform_three.png")]
		private var ArtPlatform_three:Class;
		[Embed(source="../lib/platform_four.png")]
		private var ArtPlatform_four:Class;
		[Embed(source="../lib/platform_five.png")]
		private var ArtPlatform_five:Class;
		[Embed(source="../lib/platform_six.png")]
		private var ArtPlatform_six:Class;
		[Embed(source="../lib/platform_seven.png")]
		private var ArtPlatform_seven:Class;
		[Embed(source="../lib/platform_main.png")]
		private var ArtPlatform_main:Class;
		[Embed(source="../lib/spawn_main.png")]
		private var ArtSpawn_main:Class;
		private var holder:Bitmap;
		
		//other? private vars

		public function Platform(nr:int) 
		{

			switch (nr)
			{
				case 1:
					holder = new ArtPlatform_one();
					break;
				case 2:
					holder = new ArtPlatform_two();
					break;
				case 3:
					holder = new ArtPlatform_three();
					break;
				case 4:
					holder = new ArtPlatform_four();
					break;
				case 5:
					holder = new ArtPlatform_five();
					break;
				case 6:
					holder = new ArtPlatform_six();
					break;
				case 7:
					holder = new ArtPlatform_seven();
					break;
				case 8:
					holder = new ArtPlatform_main();
					break;
				case 9:
					holder = new ArtSpawn_main();
					break;

				default:
					//empty
					break;

			}
			//i don't know what i am doing
			addChild(holder);
		}
		
	}

}