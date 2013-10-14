/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:35
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.sensor {

    import com.badprogrammist.ai.agent.sensor.AbstractSensor;
    import com.badprogrammist.examples.hoovier.Dust;
    import com.badprogrammist.ai.Subject;
    import com.badprogrammist.examples.hoovier.Room;

    public class DustSensor extends AbstractSensor {

        private var _dust:Dust;

        override public function scan(subject:Subject):void {
            if (subject is Room) {
                var r:Room = subject as Room;
                if (r.dust != null) {
                    _dust = r.dust;
                }
            }
        }


        override public function get result():Subject {
            return _dust;
        }
    }
}
