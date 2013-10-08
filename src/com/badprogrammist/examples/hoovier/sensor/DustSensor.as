/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:35
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.sensor {

    import com.badprogrammist.examples.hoovier.Dust;
    import com.badprogrammist.examples.hoovier.Space;
    import com.badprogrammist.examples.hoovier.Subject;

    public class DustSensor implements Sensor {

        public function DustSensor() {
        }

        public function scan(space:Space):Subject {
            for (var i:int = 0; i < space.subjects.length; i++) {
                if(space.subjects[i] is Dust) {
                    return space.subjects[i];
                }
            }
            return null;
        }



    }
}
