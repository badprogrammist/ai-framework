package 
{
	import core.agent.Agent;
	import core.agent.Rabbit;
	import core.environment.Environment;
	import core.environment.restriction.Position;
	import core.environment.restriction.Size;
	import core.environment.Subject;
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
		private var _timer:Timer = new Timer(500);
		private var _environment:Environment;
		private var _testSubject:Subject;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			_environment = new Environment(stage.stageWidth, stage.stageHeight);
			this.addChild(_environment.displayObject);
			_timer.addEventListener(TimerEvent.TIMER, onTimerStep);
			_timer.start();
			
			_testSubject = new Rabbit(new Position(0, 0));
			
			_environment.addSubject(_testSubject);
			
			
		}
		
		private function onTimerStep(e:TimerEvent):void
		{
			//_testSubject.position.xCount += 1;
			_environment.step();
		}
		
	}
	
}