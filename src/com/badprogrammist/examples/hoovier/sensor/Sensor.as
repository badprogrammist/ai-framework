/**
 *
 * User: Ildar Gafarov
 * Date: 08.10.13
 * Time: 19:52
 * E-mail: badprogrammist@gmail.com
 */
package com.badprogrammist.examples.hoovier.sensor {

    import com.badprogrammist.examples.hoovier.Space;
    import com.badprogrammist.examples.hoovier.Subject;

    public interface Sensor {
        function scan(space:Space):Subject;
    }
}
