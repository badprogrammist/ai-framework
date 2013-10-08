/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 20:00
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier {
    import flash.data.SQLIndexSchema;

    public class Space implements Subject {
        private var _currentParentSpace:Space;
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

        public function addSubject(subject:Subject):void {
            _subjects.push(subject);
            //trace("add subject: ",subject, " in ", this);
        }

        public function removeSubject(subject:Subject):void {
            var i:int = subjects.indexOf(subject);
            subjects.splice(i,1);
            //trace("remove subject: ",subject, " from ", this);
        }

        public function get subjects():Vector.<Subject> {
            return _subjects;
        }

        public function update(space:Space):void {
            _currentParentSpace = space;
            updateSubjects();
        }

        public function updateSubjects():void {
            for (var i:int = 0; i < _subjects.length; i++) {
                _subjects[i].update(this);
            }
        }

        public function get currentParentSpace():Space {
            return _currentParentSpace;
        }

    }
}
