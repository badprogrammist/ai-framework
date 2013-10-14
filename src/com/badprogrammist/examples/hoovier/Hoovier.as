/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 18:58
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {

    import com.badprogrammist.ai.agent.Agent;
    import com.badprogrammist.ai.agent.action.AbstractAction;
    import com.badprogrammist.ai.agent.action.Action;
    import com.badprogrammist.examples.hoovier.action.GoAnotherRoom;
    import com.badprogrammist.examples.hoovier.action.Suck;
    import com.badprogrammist.examples.hoovier.sensor.CurrentRoomSensor;
    import com.badprogrammist.examples.hoovier.sensor.DustSensor;

    public class Hoovier extends Agent {

        public function Hoovier() {
            super();
        }

        override public function update():void {
            var action:Action = new AbstractAction();
            var dust:Dust;
            sensorManager.getSensor(CurrentRoomSensor).scan(space);
            var currentRoom:Room = sensorManager.getSensor(CurrentRoomSensor).result as Room;
            if (currentRoom != null) {
                sensorManager.getSensor(DustSensor).scan(currentRoom);
                dust = sensorManager.getSensor(DustSensor).result as Dust;
                if (dust) {
                    action = actionManager.getAction(Suck);
                }
            } else {
                action = actionManager.getAction(GoAnotherRoom);
            }
            var success:Boolean = action.execute();
            trace("is success last operation: ",success);
        }

    }
}
