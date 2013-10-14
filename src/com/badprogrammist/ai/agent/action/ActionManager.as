/**
 *
 * User: Ildar Gafarov
 * Date: 14.10.13
 * Time: 22:46
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.action {
    import com.badprogrammist.ai.agent.Agent;

    public class ActionManager {

        private var _agent:Agent;

        private var _actions:Object = new Object();

        public function ActionManager(agent:Agent) {
            _agent = agent;
        }

        public function getAction(actionClass:Class):Action {
            var a:Action = _actions[actionClass];
            if (a == null) {
                a = new actionClass();
                a.agent = _agent;
                _actions[actionClass] = a;
            }
            return a;
        }

    }
}
