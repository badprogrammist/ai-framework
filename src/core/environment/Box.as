package core.environment 
{
	import core.environment.restriction.Position;
	import core.environment.restriction.Size;
	import core.Graphic;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Box implements Graphic
	{
		private var _size:Size = new Size(1, 1);
		private var _position:Position;
		private var _color:uint;

		private var _displayObject:Sprite = new Sprite();
		
		public function Box(position:Position,color:uint) 
		{
			_position = position;
			_color = color;
			draw();
			_displayObject.x = _position.x;
			_displayObject.y = _position.y;
		}
		
		public function draw():void
		{
			_displayObject.graphics.beginFill(_color);
			_displayObject.graphics.drawRect(0, 0, _size.width, _size.height);
			_displayObject.graphics.endFill();
			_displayObject.graphics.lineStyle(0,0,0.1);
			_displayObject.graphics.drawRect(0, 0, _size.width, _size.height);
		}
		
		public function get displayObject():Sprite
		{
			return _displayObject;
		}

	}

}