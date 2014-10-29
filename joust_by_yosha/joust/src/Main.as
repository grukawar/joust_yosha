package src 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author The Hitman
	 */
	public class Main extends Sprite
	{
		//private variables
		private var platforms:Array;
		
		//public variables
		public var background:Bg;
		public var platForm:Platform;
		public var player_one:Player;
		public var enemy_one:Enemy;
		//public function hitTestObject(obj:DisplayObject):Boolean

		public function Main() 
		{
			//adding the background (?)
			background = new Bg;
			addChild(background);
			
			//adding the platforms
			platforms = new Array();
			platforms.push(new Platform(1));
			platforms.push(new Platform(2));
			platforms.push(new Platform(3));
			platforms.push(new Platform(4));
			platforms.push(new Platform(5));
			platforms.push(new Platform(6));
			platforms.push(new Platform(7));
			platforms.push(new Platform(8));
			platforms.push(new Platform(9));
			
			//putting the platforms in the game
			var l:int = platforms.length;
			for (var i:int = 0; i < l; i++) 
			{
				addChild(platforms[i]);
			}
			//first platform position
			platforms[0].x = 230;
			platforms[0].y = 263;
			//second platform position
			platforms[1].x = 437;
			platforms[1].y = 206;
			//third platform position
			platforms[2].x = 554;
			platforms[2].y = 222;
			//fourth platform position
			platforms[3].x = 545;
			platforms[3].y = 107;
			//fitht platform position
			platforms[4].x = 185;
			platforms[4].y = 127;
			//sixth platform position
			platforms[5].x = 5;
			platforms[5].y = 220;
			//seventh platform position
			platforms[6].x = 4;
			platforms[6].y = 107;
			//main platform position
			platforms[7].x = 118;
			platforms[7].y = 343;// the evil number
			//main spawn position
			platforms[8].x = 262;
			platforms[8].y = 343;// the evil number

			//the player bound to change
			player_one = new Player;
			addChild(player_one);
			
			//the  enemy bound to change
			enemy_one = new Enemy;
			addChild(enemy_one);
			
			
			
		}
		
	}

}