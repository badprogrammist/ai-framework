/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:01
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.ai.agent.action.AbstractAction;
    import com.badprogrammist.examples.hoovier.Hoovier;
    import com.badprogrammist.examples.hoovier.Room;
    import com.badprogrammist.examples.hoovier.sensor.CurrentRoomSensor;

    public class GoAnotherRoom extends AbstractAction {

        public function GoAnotherRoom() {
        }

        override public function execute():Boolean {
            var success:Boolean = false;
            var currentRoom:Room = agent.sensorManager.getSensor(CurrentRoomSensor).result as Room;
            var anotherRoom:Room;
            if (currentRoom != null) {
                for each(var s:Subject in agent.space.subjects) {
                    if (s is Room) {
                        var r:Room = s as Room;
                        if (r != currentRoom) {
                            anotherRoom = r;
                        }
                    }
                }
                if (anotherRoom != null) {
                    currentRoom.hoovier = null;
                    anotherRoom.hoovier = agent as Hoovier;
                    success = true;
                }
            }
            trace("go another room");
            return success;
        }
    }
}
