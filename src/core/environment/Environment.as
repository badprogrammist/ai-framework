package core.environment 
{
	import core.environment.restriction.Position;
	import core.Graphic;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Environment implements Graphic
	{
		public static const BOX_WIDTH:int = 12;
		public static const BOX_HEIGHT:int = 12;
		
		private var _width:int;
		private var _height:int;
		
		private var _horizontalBoxCount:int;
		private var _verticalBoxCount:int;
		
		private var _boxes:Vector.<Box> = new Vector.<Box>();
		
		private var _displayObject:Sprite = new Sprite();
		
		private var _subjects:Vector.<Subject> = new Vector.<Subject>();
		
		public function Environment(width:Number, height:Number) 
		{
			_width = width;
			_height = height;
			
			_horizontalBoxCount = (int)(_width / BOX_WIDTH);
			_verticalBoxCount = (int)(_height / BOX_HEIGHT);
			
			draw();
			createBoxes();
		}
		
		public function addSubject(subject:Subject):void
		{
			_subjects.push(subject);
			addGraphic(subject);
		}
		
		public function step():void
		{
			for (var i:int = 0; i < _subjects.length; i++ ) {
				_subjects[i].displayObject.x = _subjects[i].position.x;
				_subjects[i].displayObject.y = _subjects[i].position.y;
			}
		}
		
		
		public function draw():void
		{
			_displayObject.graphics.drawRect(0, 0, _width, _height);
		}
		
		private function createBoxes():void
		{
			for (var i:int = 0; i < _horizontalBoxCount; i++ ) {
				for (var j:int = 0; j < _verticalBoxCount; j++ ) {
					var box:Box = new Box(new Position(i,j), 0x9DBFA5);
					addGraphic(box);
					_boxes.push(box);
				}
			}
		}
		
		private function addGraphic(graphic:Graphic):void
		{
			displayObject.addChild(graphic.displayObject);
		}
		
		public function get displayObject():Sprite
		{
			return _displayObject;
		}
		
		
		
	}

}