/** @classname                 :   HandlerCloneRecord
 *  @author                    :   Raghavendra Kadam
 *  @date                      :   01-Feb-2023
 *  @description               :   This is Handler class of TriggerCloneRecord used to set static variable which help to get out of recursion
 *  @modification log  
 *  1. Raghavendra Kadam       :   Class added 01-Feb-2023
 *  2. Raghavendra Kadam       :   Comments added 02-Feb-2023
 *  3. Raghavendra Kadam       :   Corrected comments added 03-Feb-2023
*/
public class HandlerCloneRecord {
  private static boolean run = true;
/** @methodname                :   runOnce 
 *  @author                    :   Raghavendra Kadam
 *  @param                     :   none
 *  @description               :   This method set static boolean flag false for recursion solution
 *  @return                    :   none
*/
  public static boolean runOnce() {
    if(run) {
      run=false;
      return true;
    }
    else {
      return run;
    }
  }
}