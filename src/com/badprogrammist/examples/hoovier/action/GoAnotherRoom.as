/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:01
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.examples.hoovier.Hoovier;
    import com.badprogrammist.examples.hoovier.Room;
    import com.badprogrammist.examples.hoovier.Space;
    import com.badprogrammist.examples.hoovier.Subject;

    public class GoAnotherRoom implements Action {
        public function GoAnotherRoom() {
        }

        public function execute(subject:Subject):Boolean {
            var success:Boolean = false;
            var hoovier:Hoovier = subject as Hoovier;
            var currentRoom:Room = hoovier.currentSpace as Room;
            var anotherRoom:Room;
            var parentSpace:Space = currentRoom.currentParentSpace;
            if (parentSpace) {
                for (var i:int = 0; i < parentSpace.subjects.length; i++) {
                    if (parentSpace.subjects[i] is Room) {
                        if (parentSpace.subjects[i] != currentRoom) {
                            currentRoom.removeSubject(subject);
                            anotherRoom = parentSpace.subjects[i] as Room;
                            anotherRoom.addSubject(subject);
                            trace ("go from ",currentRoom.name," to ",anotherRoom.name);
                            break;
                        }
                    }
                }
                if (anotherRoom != null) {
                    if (currentRoom.contain(subject) == false && anotherRoom.contain(subject)) {
                        success = true;
                    }
                }
            }
            return success;
        }
    }
}
