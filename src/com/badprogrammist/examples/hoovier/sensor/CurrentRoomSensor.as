/**
 *
 * User: Ildar Gafarov
 * Date: 14.10.13
 * Time: 22:14
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.sensor {
    import com.badprogrammist.ai.Space;
    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.ai.agent.sensor.AbstractSensor;
    import com.badprogrammist.examples.hoovier.Room;

    public class CurrentRoomSensor extends AbstractSensor {

        private var _currentRoom:Room;

        override public function scan(subject:Subject):void {
            if (subject is Space) {
                var space:Space = subject as Space;
                for each(var s:Subject in space.subjects) {
                    if (s is Room) {
                        var r:Room = s as Room;
                        if (r.hoovier == agent) {
                            _currentRoom = r;
                        }
                    }
                }
            }
        }


        override public function get result():Subject {
            return _currentRoom;
        }
    }
}
