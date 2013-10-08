/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:02
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.examples.hoovier.Dust;
    import com.badprogrammist.examples.hoovier.Hoovier;
    import com.badprogrammist.examples.hoovier.Room;
    import com.badprogrammist.examples.hoovier.Subject;

    public class Suck implements Action {
        public function Suck() {
        }

        public function execute(subject:Subject):Boolean {
            var success:Boolean = false;
            var hoovier:Hoovier = subject as Hoovier;
            for (var i:int = 0; i < hoovier.currentSpace.subjects.length; i++) {
                if(hoovier.currentSpace.subjects[i] is Dust) {
                    var dust:Dust = hoovier.currentSpace.subjects[i] as Dust;
                    hoovier.currentSpace.removeSubject(dust);
                    if (hoovier.currentSpace.contain(dust) == false) {
                        success = true;
                    }
                    trace("clean room: ", (hoovier.currentSpace as Room).name);
                    break;
                }
            }
            return success;
        }
    }
}
