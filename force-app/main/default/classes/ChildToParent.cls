/*
*  @classname  			:   ChildToParent
*  @author 				:   Raghav
*  @date 				:   01-02-2023
*  @description  		:   This is class retrive Soql querries
*  1. Comments added    :   01-02-2023
*/
public with sharing class ChildToParent {
public void queOne(){
/**  @methodname 	    :   queOne
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   Write a SOQL query on Contact to retrieve all active contacts belonging to 'media'
                            Industry. Also display the name of the account to which it is associated.
  *  @return 			:   none
*/

    List<Contact> conlist=[Select Id, Account.Industry, Account.Active__c from Contact where (Account.Industry ='Media' and account.Active__c ='Yes')];
    for (Contact con : conlist) {
      System.debug('=='+con);
    }
  }
/**  @methodname 	    :   queOne
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   Write a SOQL query on 'C'(created above) to retrieve all records of 'C' with name 'John'
                            along with parent details.
  *  @return 			:   none
*/
  Public Static Void ParentName(){
    List<C__c> objlist=New List<C__c>([Select Name, A__r.Id, A__r.Name, B__r.Id, B__r.Name From C__c]);
    System.debug(objlist);
  }
}