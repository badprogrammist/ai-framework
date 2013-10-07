package com.badprogrammist.examples.microworld.environment
{
    import com.badprogrammist.examples.microworld.environment.restriction.Position;
    import com.badprogrammist.examples.microworld.environment.restriction.Size;

	import com.badprogrammist.examples.microworld.Graphic;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Subject implements Graphic
	{
		private var _position:Position;
		private var _size:Size;
		
		private var _displayObject:Sprite = new Sprite();
		
		public function Subject(position:Position,size:Size) 
		{
			_position = position;
			_size = size;
			draw();
		}
		
		public function draw():void {
			_displayObject.graphics.beginFill(0xD980D7);
			_displayObject.graphics.drawEllipse(0, 0, _size.width, _size.height);
			_displayObject.graphics.endFill();
		}
		
		public function get displayObject():Sprite {
			return _displayObject;
		}
		
		public function get position():Position {
			return _position;
		}
		
		public function get size():Size {
			return _size;
		}
		
	}

}