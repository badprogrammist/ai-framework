/**
 *
 * User: Ildar Gafarov
 * Date: 14.10.13
 * Time: 22:36
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.sensor {
    import com.badprogrammist.ai.agent.Agent;

    public class SensorManager {

        private var _agent:Agent;

        private var _sensors:Object = [];

        public function SensorManager(agent:Agent) {
            _agent = agent;
        }

        public function getSensor(sensorClass:Class):Sensor {
            var s:Sensor = _sensors[sensorClass];
            if (s == null) {
                s = new sensorClass();
                s.agent = _agent;
                _sensors[sensorClass] = s;
            }
            return s;
        }

    }
}
