/**
 *
 * User: Ildar Gafarov
 * Date: 07.10.13
 * Time: 23:25
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent {
    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.ai.agent.action.ActionManager;
    import com.badprogrammist.ai.agent.sensor.SensorManager;

    public class Agent extends Subject {

        private var _sensorManager:SensorManager;
        private var _actionManager:ActionManager;


        public function Agent() {
            _sensorManager = new SensorManager(this);
            _actionManager = new ActionManager(this);

        }

        public function get sensorManager():SensorManager {
            return _sensorManager;
        }

        public function get actionManager():ActionManager {
            return _actionManager;
        }
    }
}
