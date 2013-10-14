/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:44
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.action {
    import com.badprogrammist.ai.agent.Agent;

    public interface Action {

        function execute():Boolean;
        function get agent():Agent;
        function set agent(value:Agent):void;
    }
}
