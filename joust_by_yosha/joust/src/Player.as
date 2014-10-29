package src 
{
	/**
	 * ...
	 * @author The Hitman
	 */
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	
	public class Player extends Sprite
	{
		//private variables
		[Embed(source="../lib/player_one.png")]
		private var ArtPlayer_one:Class;
		private var artPlayer_one:Bitmap;
		private var spacePressed:Boolean = false;
		private var arrowRPressed:Boolean = false;
		private var arrowLPressed:Boolean = false;
		
		
		
		public function Player() 
		{
			//a eventlistener... quit useful
			addEventListener(Event.ADDED_TO_STAGE,init);
			
			//player art try out
			artPlayer_one = new ArtPlayer_one();
			addChild(artPlayer_one);
			//artPlayer_one.x = 300;
			artPlayer_one.y = 87;
			
			
			

		}
		// not quit sure what is going on here but it has to do with the controls
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			
			// not sure (?)
			addEventListener(Event.ENTER_FRAME, loop);
		}
		//checking if the spacebar is not bieng pressed
		private function onKeyUp(e:KeyboardEvent):void 
		{
			if (e.keyCode == 32)
			{
				spacePressed = false;
			}
			
			if (e.keyCode == 39)
			{
				arrowRPressed = false;
			}
			
			if (e.keyCode == 37)
			{
				arrowLPressed = false;
			}
		}
		//here i must put that the (bird) will (fly) jump and the movement
		private function loop(e:Event):void 
		{
			if (spacePressed) {
				y -= 10;
			}
			else(y)
			{
				y += 5;
			}
			
			if (arrowRPressed) {
				x += 5;
				scaleX = 1;
			}
			
			if (arrowLPressed) {
				x -= 5;
				scaleX = -1;
			}
			
		}
		//checking if the spacebar is pressed
		private function onKeyDown(e:KeyboardEvent):void 
		{
			if (e.keyCode == 32 )
			{
				spacePressed = true;
				trace("you are worthless!!");
			}
			
			if (e.keyCode == 39)
			{
				arrowRPressed = true;
			}
			
			if (e.keyCode == 37)
			{
				arrowLPressed = true;
			}
		}
		
		
		
	}

}