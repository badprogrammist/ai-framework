/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:00
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {
    import flash.events.TimerEvent;
    import flash.utils.Timer;

    /**
     * TODO Bug. Because of the gradual upgrade actors (in particular rooms).
     * When updated the first room, the agent makes a transition
     * into the next room. Then, together with the second room,
     * the agent again updated.
     */
    public class HoovierWorld extends Space {

        private var _timer:Timer = new Timer(1000,15);

        public function HoovierWorld() {
            _timer.addEventListener(TimerEvent.TIMER, step);
            var leftRoom:Room = new Room("room 1");
            var rightRoom:Room = new Room("room 2");
            leftRoom.addSubject(new Hoovier());
            addSubject(leftRoom);
            addSubject(rightRoom);
        }

        public function start():void {
            _timer.start();
        }

        private function step(e:TimerEvent):void {
            update(null);
            trace("-------- end step --------");
        }

    }
}
