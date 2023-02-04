/** @classname           :   HandlerBeforeAfterConcept
 *  @author              :   Raghavendra Kadam
 *  @date                :   01-Feb-2023
 *  @description         :   This is Handler class of TriggerAllEventConcept 
                             used to check after and before concepts of trigger context variables
 *  @modification log  
 *  1. Raghavendra Kadam : Comments added 01-Feb-2023
*/
public with sharing class HandlerBeforeAfterConcept {
/** @methodname           :   beforeInsert 
 *  @author               :   Raghavendra Kadam
 *  @param                :   List<Account>
 *  @description          :   This method print wheter trigger context varible worked or not accordingly
 *  @return               :   none
*/
  public void beforeInsert(List<Account>accList){
    for (Account acc : accList) {
      System.debug('Before Insert=='+acc); 
    }
  }
/** @methodname          :   afterInsert 
 *  @author              :   Raghavendra Kadam
 *  @param               :   List<Account>
 *  @description         :   This method print wheter trigger context varible worked or not accordingly
 *  @return              :   none
*/
  public void afterInsert(List<Account>accList){
    for (Account acc : accList) {
      System.debug('After Insert=='+acc);
    }
  }
/** @methodname          :   beforeUpdate 
 *  @author              :   Raghavendra Kadam
 *  @param               :   List<Account>
 *  @description         :   This method print wheter trigger context varible worked or not accordingly
 *  @return              :   none
*/
  public void beforeUpdate(List<Account> accList){
    for (Account acc : accList) {
      System.debug('Before Update=='+acc);
    }
  }
/** @methodname          :   afterUpdate 
 *  @author              :   Raghavendra Kadam
 *  @param               :   List<Account>
 *  @description         :   This method print wheter trigger context varible worked or not accordingly
 *  @return              :   none
*/
  public void afterUpdate(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Update=='+acc);
    }
  }
/** @methodname          :   beforeDelete 
 *  @author              :   Raghavendra Kadam
 *  @param               :   List<Account>
 *  @description         :   This method print wheter trigger context varible worked or not accordingly
 *  @return              :   none
*/
  public void beforeDelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('Before Delete=='+acc);
    }
  }
/**  @methodname          :   afterDelete 
 *  @author               :   Raghavendra Kadam
 *  @param                :   List<Account>
 *  @description          :   This method print wheter trigger context varible worked or not accordingly
 *  @return               :   none
*/
  public void afterDelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Delete=='+acc);
    }
  }
/** @methodname           :   afterUndelete 
 *  @author               :   Raghavendra Kadam
 *  @param                :   List<Account>
 *  @description          :   This method print wheter trigger context varible worked or not accordingly
 *  @return               :   none
*/
  public void afterUndelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Undelete=='+acc);
    }
  }
}