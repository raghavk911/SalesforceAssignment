/**  @classname  			:   HandlerBeforeAfterConcept
  *  @author 				:   Raghav
  *  @date 					:   01-02-2023
  *  @description  			:   This is Handler class of TriggerAllEventConcept used to check after and before concepts of trigger context variables
  *  @modification log		:	
  *  1. Comments added      :   01-02-2023
*/
public with sharing class HandlerBeforeAfterConcept {
/**  @methodname 	    :   beforeInsert 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void beforeInsert(List<Account>accList){
    for (Account acc : accList) {
      System.debug('Before Insert=='+acc); 
    }
  }
/**  @methodname 	    :   afterInsert 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void afterInsert(List<Account>accList){
    for (Account acc : accList) {
      System.debug('After Insert=='+acc);
    }
  }
/**  @methodname 	    :   beforeUpdate 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void beforeUpdate(List<Account> accList){
    for (Account acc : accList) {
      System.debug('Before Update=='+acc);
    }
  }
/**  @methodname 	    :   afterUpdate 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void afterUpdate(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Update=='+acc);
    }
  }
/**  @methodname 	    :   beforeDelete 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void beforeDelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('Before Delete=='+acc);
    }
  }
/**  @methodname 	    :   afterDelete 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void afterDelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Delete=='+acc);
    }
  }
/**  @methodname 	    :   afterUndelete 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   List of Account
  *  @description       :   This method print wheter trigger context varible worked or not accordingly
  *  @return 			:   none
*/
  public void afterUndelete(List<Account> accList){
    for (Account acc : accList) {
      System.debug('After Undelete=='+acc);
    }
  }
}