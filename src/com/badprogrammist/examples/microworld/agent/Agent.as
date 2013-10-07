package com.badprogrammist.examples.microworld.agent
{
    import com.badprogrammist.examples.microworld.environment.Subject;
    import com.badprogrammist.examples.microworld.environment.restriction.Position;
    import com.badprogrammist.examples.microworld.environment.restriction.Size;

	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Agent extends Subject
	{
		
		public function Agent(position:Position, size:Size) 
		{
			super(position, size);
		}
		
		override public function draw():void {
			displayObject.graphics.beginFill(0x8F80D9);
			displayObject.graphics.drawEllipse(0, 0, size.width, size.height);
			displayObject.graphics.endFill();
		}
		
	}

}