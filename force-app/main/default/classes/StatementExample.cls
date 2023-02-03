/**  @classname  				    :   StatementExample
 *  @author 						    :   Raghavendra Kadam
 *  @date 							    :   02-Feb-2023
 *  @description  			    :   This class contains 
 *  @modification log		  
 *  1. Class added          :   01-Feb-2023
 *  1. Comments added       :   01-Feb-2023
 *  1. Corrected comments   :   02-Feb-2023
*/
public class StatementExample {
/**  @methodname 	      :   run
 *  @author 						:   Raghavendra Kadam
 *  @param  			      :   none
 *  @description        :   This method is used to verify working of if-else statements
 *  @return 			      :   none
*/
  public void run(){
    for (integer i = 0; i < 10; i++) {
      if (i == 4) {
        break;
      }
      System.debug(i);
    }
    for (integer i = 0; i < 10; i++) {
      if (i == 4) {
        continue;
      }
      System.debug(i);
    }
  }
}