package src 
{
	/**
	 * ...
	 * @author The Hitman
	 */
	
	 
	import flash.display.Sprite;
	import flash.display.Bitmap;
	public class Enemy extends Sprite
	{
		
		[Embed(source="../lib/enemy_one.png")]
		private var ArtEnemy_one:Class;
		private var artEnemy_one:Bitmap;
		
		public function Enemy() 
		{
			
			//enemy art try out
			artEnemy_one = new ArtEnemy_one();
			addChild(artEnemy_one);
			artEnemy_one.x = 270;
			artEnemy_one.y = 87;
			
		}
		
	}

}