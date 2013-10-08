/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 20:44
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.examples.hoovier.Subject;

    public class DoNothing implements Action {
        public function DoNothing() {
        }

        public function execute(subject:Subject):Boolean {
            trace("do nothing");
            return true;
        }
    }
}
