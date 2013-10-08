/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 18:59
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {
    public class Room extends Space {
        private var _name:String;

        public function Room(name:String) {
            _name = name;
        }

        override public function update(space:Space):void {
            generateDust();
            super.update(space);
            trace("subjects in ",_name, ":",subjects);
        }

        private function generateDust():void {
            var isClean:Boolean = true;
            for (var i:int = 0; i < subjects.length; i++) {
                if(subjects[i] is Dust) {
                    isClean = false;
                    break;
                }
            }
            if (isClean) {
                if (generateRandomBin()) {
                    addSubject(new Dust());
                    trace("new dust in ",_name);
                }
            }

        }

        private function generateRandomBin():Boolean {
            return Math.random() >= 0.5;
        }


        public function get name():String {
            return _name;
        }
    }
}
