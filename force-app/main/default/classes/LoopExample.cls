/** @classname              :   LoopExample
 *  @author                 :   Raghavendra Kadam
 *  @date                   :   02-02-2023
 *  @description            :   This class is used for learn loop example
 *  @modification log
 *  1. Raghavendra Kadam    :   Class created 02-02-2023
 *  2. Raghavendra Kadam    :   Comments added 02-02-2023
 *  3. Raghavendra Kadam    :   Corrected comments 03-02-2023
*/
public class LoopExample {
  public void run(){
    integer i=1;
    while(i<=10){
        System.debug('In While:: '+i);
        i++;
    }
  }
/** @methodname              :   execute
 *  @author                  :   Raghavendra Kadam
 *  @param                   :   none
 *  @description             :   This method represents execution of do while loop
 *  @return                  :   none
*/
  public void execute(){
    integer i=1;
    do{
      System.debug('In Do-While:: '+i);
    i++;
    }while(i<=10);
  }
}