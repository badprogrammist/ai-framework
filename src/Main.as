package 
{
    import com.badprogrammist.examples.hoovier.HoovierWorld;
    import com.badprogrammist.examples.microworld.agent.Rabbit;
    import com.badprogrammist.examples.microworld.environment.Environment;
    import com.badprogrammist.examples.microworld.environment.Subject;
    import com.badprogrammist.examples.microworld.environment.restriction.Position;

    import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	/**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com
	 */
	public class Main extends Sprite 
	{

		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point

            var hoovierWorld:HoovierWorld = new HoovierWorld();
            hoovierWorld.start();

			
			
		}
		

		
	}
	
}