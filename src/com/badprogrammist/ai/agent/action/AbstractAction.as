/**
 *
 * User: Ildar Gafarov
 * Date: 14.10.13
 * Time: 22:17
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.action {

    import com.badprogrammist.ai.agent.Agent;

    public class AbstractAction implements Action {

        private var _agent:Agent;

        public function AbstractAction() {
        }

        public function get agent():Agent {
            return _agent;
        }

        public function set agent(value:Agent):void {
            _agent = value;
        }

        public function execute():Boolean {
            trace("do nothing");
            return false;
        }
    }
}
