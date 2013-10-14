/**
 *
 * User: Ildar Gafarov
 * Date: 14.10.13
 * Time: 22:17
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.sensor {
    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.ai.agent.Agent;

    public class AbstractSensor implements Sensor {

        private var _agent:Agent;

        public function AbstractSensor() {
        }

        public function scan(subject:Subject):void {

        }

        public function get agent():Agent {
            return _agent;
        }

        public function get result():Subject {
            return null;
        }

        public function set agent(value:Agent):void {
            _agent = value;
        }
    }
}
