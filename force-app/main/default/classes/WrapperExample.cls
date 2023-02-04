/**
 * @classname                :   WrapperExample
 * @author                   :   Raghavendra Kadam
 * @date                     :   22-Jan-2023
 * @description              :   This class explain working functionality of wrapper 
 * 
 * @modification log
 * 1. Raghavendra Kadam      :   31-Jan-2023  Update the code intentation
 * 2. Raghavendra Kadam      :   01-Feb-2023  Add Code Comments
*/ 
public class WrapperExample {
/**
 * @classname                :   FeeWrapper
 * @author                   :   Raghavendra Kadam
 * @date                     :   22-Jan-2023
 * @description              :   This class explain working functionality of wrapper 
 * 
 * @modification log
 * 1. Raghavendra Kadam      :   31-Jan-2023  Update the code intentation
 * 2. Raghavendra Kadam      :   01-Feb-2023  Add Code Comments
*/ 
  public class FeeWrapper{
    List<Account> acco;
    List<Contact> cont;
    List<Opportunity> oppt;
  }
/** @methodname              :    fetchdata
 *  @author                  :    Raghavendra Kadam
 *  @description             :    This method contain query of Account, Contact and Opportunity object
*/
  public void fetchdata(){
    for(Account ac:[Select Id from Account]){
      FeeWrapper f=new FeeWrapper();
      f.acco.add(ac);
    }

    for(Contact co:[Select Id, FirstName, LastName, Phone from Contact]){
      FeeWrapper t=new FeeWrapper();
      t.cont.add(co);
    }
    for(Opportunity op:[Select Id, amount from Opportunity]){
      FeeWrapper g=new FeeWrapper();
      g.oppt.add(op);
    }
  }
/**  @methodname            :     print
  *  @author                :     Raghavendra Kadam
  *  @description           :     This method print result that contain fees according to student
*/
  public static void print(){
    FeeWrapper pr=new FeeWrapper();
    system.debug('Student Account Id::'+pr.acco);
    system.debug('Student Contact Id, First Name, Last Name::'+pr.cont);
    system.debug('Student Opportunity Id, Amount::'+pr.oppt);
  }
}