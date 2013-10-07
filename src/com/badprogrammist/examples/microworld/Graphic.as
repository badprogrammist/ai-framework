package com.badprogrammist.examples.microworld
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public interface Graphic 
	{
		function draw():void;
		function get displayObject():Sprite;
	}
	
}