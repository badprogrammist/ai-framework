/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:52
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai.agent.sensor {

    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.ai.agent.Agent;

    public interface Sensor {
        function scan(subject:Subject):void;
        function get result():Subject;
        function get agent():Agent;
        function set agent(value:Agent):void;
    }
}
