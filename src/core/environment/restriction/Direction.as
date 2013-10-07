package core.environment.restriction 
{
	import core.Graphic;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Direction implements Graphic
	{
		public static const LEFT:Direction = new Direction(180);
		public static const RIGHT:Direction = new Direction(360);
		public static const TOP:Direction = new Direction(90);
		public static const BOTTOM:Direction = new Direction(270);
		public static const LEFT_TOP:Direction = new Direction(135);
		public static const RIGHT_TOP:Direction = new Direction(45);
		public static const LEFT_BOTTOM:Direction = new Direction(225);
		public static const RIGHT_BOTTOM:Direction = new Direction(315);
		
		private var _angleDegree:Number;
		
		private var _displayObject:Sprite = new Sprite();
		
		public function Direction(angleDegree:Number) 
		{
			_angleDegree = angleDegree;
		}
		
		public function draw():void {
			_displayObject.graphics.beginFill(0xE34B4B);
			_displayObject.graphics.moveTo(0, 0);
			_displayObject.graphics.lineTo(0, -3);
			_displayObject.graphics.lineTo(3, 0);
			_displayObject.graphics.lineTo(3, 3);
			_displayObject.graphics.lineTo(0, 3);
			_displayObject.graphics.endFill();
		}
		
		public function get displayObject():Sprite {
			return _displayObject;
		}
		
		public function get angleRadian():Number {
			return Math.PI / 180 * (_angleDegree == 0 ? 360 : _angleDegree);
		}
		
		public function get angleDegree():Number {
			return _angleDegree;
		}
		
		
		
		
	}

}