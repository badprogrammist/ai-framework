package com.badprogrammist.examples.microworld.environment.restriction
{
    import com.badprogrammist.examples.microworld.environment.Environment;

    /**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Size 
	{
		private var _xBoxCount:int;
		private var _yBoxCount:int;
		
		public function Size(xBoxCount:int,yBoxCount:int) 
		{
			_xBoxCount = xBoxCount;
			_yBoxCount = yBoxCount;
		}
		
		public function get xBoxCount():int 
		{
			return _xBoxCount;
		}
		
		public function get yBoxCount():int 
		{
			return _yBoxCount;
		}
		
		public function get width():Number
		{
			return _xBoxCount * Environment.BOX_WIDTH;
		}
		
		public function get height():Number
		{
			return _yBoxCount * Environment.BOX_HEIGHT;
		}
		
	}

}