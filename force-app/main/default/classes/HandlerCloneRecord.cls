/**  @classname  			:   HandlerCloneRecord
  *  @author 				:   Raghav
  *  @date 					:   01-02-2023
  *  @description  			:   This is Handler class of  TriggerCloneRecord used to set static variable which help to get out of recursion
  *  @modification log		:	
  *  1. Comments added      :   01-02-2023
*/
public class HandlerCloneRecord {
  private static boolean run = true;
/**  @methodname 	    :   runOnce 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This method set static boolean flag false for recursion solution
  *  @return 			:   none
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