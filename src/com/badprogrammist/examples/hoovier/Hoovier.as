/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 18:58
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {
    import com.badprogrammist.examples.hoovier.action.Action;
    import com.badprogrammist.examples.hoovier.action.DoNothing;
    import com.badprogrammist.examples.hoovier.action.GoAnotherRoom;
    import com.badprogrammist.examples.hoovier.action.Suck;
    import com.badprogrammist.examples.hoovier.sensor.DustSensor;

    public class Hoovier implements Subject {

        private var _dustSensor:DustSensor = new DustSensor();
        private var _availableActions:Vector.<Class> = new Vector.<Class>();

        private var _currentSpace:Space;

        public function Hoovier() {
            _availableActions.push(GoAnotherRoom);
            _availableActions.push(Suck);
            _availableActions.push(DoNothing);
        }

        public function update(space:Space):void {
            _currentSpace = space;
            var action:Action;
            var dust:Dust = _dustSensor.scan(space) as Dust;
            if (dust) {
                action = getAction(Suck);
            } else {
                var parentSpace:Space = space.currentParentSpace;
                var currentRoom:Room = space as Room;
                for (var i:int = 0; i < parentSpace.subjects.length; i++) {
                    if (parentSpace.subjects[i] is Room) {
                        if (parentSpace.subjects[i] != currentRoom) {
                            action = getAction(GoAnotherRoom);
                            break;
                        }
                    }
                }
            }
            var success:Boolean = action.execute(this);
            trace("is success last operation: ",success);
        }

        public function get currentSpace():Space {
            return _currentSpace;
        }

        private function getAction(actionClass:Class):Action {
            for (var i:int = 0; i < _availableActions.length; i++) {
                if (actionClass == _availableActions[i]) {
                    return new actionClass();
                }
            }
            return new DoNothing();
        }
    }
}
