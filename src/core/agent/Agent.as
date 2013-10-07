package core.agent 
{
	import core.environment.restriction.Position;
	import core.environment.restriction.Size;
	import core.environment.Subject;
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