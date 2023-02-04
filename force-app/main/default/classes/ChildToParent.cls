/*
*  @classname             :   ChildToParent
*  @author                :   Raghavendra Kadam
*  @date                  :   01-Feb-2023
*  @description           :   This is class retrive Soql querries
*  1. Raghavendra Kadam   :   Class added 01-Feb-2023
*  2. Raghavendra Kadam   :   Comments added 01-Feb-2023
*  3. Raghavendra Kadam   :   Corrected comments 01-Feb-2023
*/
public with sharing class ChildToParent {
/** @methodname          :   queOne
 *  @author              :   Raghavendra Kadam
 *  @description         :   Write a SOQL query on Contact to retrieve all active contacts belonging to 'media'
 *                           Industry. Also display the name of the account to which it is associated.
*/
public void queOne(){
    List<Contact> conlist=[Select Id, Account.Industry, Account.Active__c from Contact where (Account.Industry ='Media' and account.Active__c ='Yes')];
    for (Contact con : conlist) {
      System.debug('=='+con);
    }
  }
/** @methodname           :   queTwo
 *  @author               :   Raghavendra Kadam
 *  @description          :   Write a SOQL query on 'C'(created above) to retrieve all records of 'C' with name 'John'
                              along with parent details.
*/
  Public Static Void queTwo(){
    List<C__c> objlist=New List<C__c>([Select Name, A__r.Id, A__r.Name, B__r.Id, B__r.Name From C__c]);
    System.debug(objlist);
  }
}