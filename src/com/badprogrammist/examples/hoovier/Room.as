/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 18:59
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {

    import com.badprogrammist.ai.Subject;

    public class Room extends Subject {

        private var _name:String;
        private var _dust:Dust;
        private var _hoovier:Hoovier;

        public function Room(name:String) {
            _name = name;
        }

        override public function update():void {
            generateDust();
            trace("in ",_name, ": ",_dust, _hoovier);
        }

        private function generateDust():void {
            if (_dust == null && Math.random() >= 0.5) {
                _dust = new Dust();
            }
        }

        public function get name():String {
            return _name;
        }

        public function get dust():Dust {
            return _dust;
        }

        public function get hoovier():Hoovier {
            return _hoovier;
        }

        public function set hoovier(value:Hoovier):void {
            _hoovier = value;
        }

        public function set dust(value:Dust):void {
            _dust = value;
        }
    }
}
