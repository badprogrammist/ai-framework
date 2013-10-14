/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 20:02
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai {

    public class Subject {

        private var _space:Space;

        public function Subject() {
        }

        public function update():void {

        }

        public function get space():Space {
            return _space;
        }

        public function set space(value:Space):void {
            _space = value;
        }
    }
}
