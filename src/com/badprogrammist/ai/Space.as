/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 20:00
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.ai {


    public class Space extends Subject {

        private var _subjects:Vector.<Subject> = new Vector.<Subject>();

        public function Space() {
        }



        public function contain(subject:Subject):Boolean {
            for each(var s:Subject in subjects) {
                if (s == subject) {
                    return true;
                }
            }
            return false;
        }
        //TODO если захотим поменять space у subject сначаало нужно вызваать removeSubject потом addSubject
        public function addSubject(subject:Subject):void {
            subject.space = this;
            _subjects.push(subject);
        }

        public function removeSubject(subject:Subject):void {
            var i:int = subjects.indexOf(subject);
            subject.space = null;
            subjects.splice(i,1);
        }

        public function get subjects():Vector.<Subject> {
            return _subjects;
        }

        public function updateSubjects():void {
            for (var i:int = 0; i < _subjects.length; i++) {
                _subjects[i].update();
            }
        }
    }
}
