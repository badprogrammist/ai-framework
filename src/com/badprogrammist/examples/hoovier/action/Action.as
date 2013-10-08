/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:44
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.action {
    import com.badprogrammist.examples.hoovier.Subject;

    public interface Action {

        function execute(subject:Subject):Boolean;

    }
}
