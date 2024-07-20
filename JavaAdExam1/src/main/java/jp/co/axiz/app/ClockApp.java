
package jp.co.axiz.app;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ClockApp implements App {

 public String start(String userName) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

        return userName + "Hello" + sdf.format(date) + "it is currently";
    }
}
