package core.environment.restriction 
{
	import core.environment.Environment;
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Position 
	{
		private var _xCount:int;
		private var _yCount:int;
		
		public function Position(xCount:int,yCount:int) 
		{
			_xCount = xCount;
			_yCount = yCount;
		}
		
		public function get xCount():int {
			return _xCount;
		}
		
		public function set xCount(value:int):void {
			_xCount = value;
		}
		
		public function get yCount():int {
			return _yCount;
		}
		
		public function set yCount(value:int):void {
			_yCount = value;
		}
		
		public function get x():Number {
			return _xCount * Environment.BOX_WIDTH;
		}
		
		public function get y():Number {
			return _yCount * Environment.BOX_HEIGHT;
		}
		
		public function equals(position:Position):Boolean {
			return position.xCount == _xCount && position.yCount == _yCount;
		}
		
		
		
	}

}