/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:02
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.ai.agent.action.AbstractAction;
    import com.badprogrammist.examples.hoovier.Dust;
    import com.badprogrammist.examples.hoovier.Hoovier;
    import com.badprogrammist.examples.hoovier.Room;
    import com.badprogrammist.examples.hoovier.sensor.CurrentRoomSensor;

    public class Suck extends AbstractAction{
        public function Suck() {
        }

        override public function execute():Boolean {
            var success:Boolean = false;
            var currentRoom:Room = agent.sensorManager.getSensor(CurrentRoomSensor).result as Room;
            if (currentRoom != null) {
                if(currentRoom.dust == null) {
                    success = false;
                } else {
                    success = true;
                }
                currentRoom.dust = null;
            }
            trace("suck");
            return success;
        }
    }
}
