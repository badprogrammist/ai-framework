package com.badprogrammist.examples.microworld.agent
{
    import com.badprogrammist.examples.microworld.environment.restriction.Position;
    import com.badprogrammist.examples.microworld.environment.restriction.Size;
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Rabbit extends Agent
	{
		
		public function Rabbit(position:Position) 
		{
			super(position, new Size(1, 1));
		}
		
		override public function draw():void {
			displayObject.graphics.beginFill(0x8F80D9);
			displayObject.graphics.drawEllipse(0, 0, size.width, size.height);
			displayObject.graphics.endFill();
		}
		
		
		
		
	}

}