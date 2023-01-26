public with sharing class ChildToParent {
public void queOne(){

/*1. Write a SOQL query on Contact to retrieve all active contacts belonging to 'media'
Industry. Also display the name of the account to which it is associated.*/
        List<Contact> conlist=[Select Id, Account.Industry, Account.Active__c from Contact where (Account.Industry ='Media' and account.Active__c ='Yes')];
        for (Contact con : conlist) {
            System.debug('=='+con);
        }
    }

/*2. Write a SOQL query on 'C'(created above) to retrieve all records of 'C' with name 'John'
along with parent details.*/
    Public Static Void ParentName(){
  //     List<C__c> objlist=New List<C__c>([Select Name, A__r.Id, A__r.Name, B__r.Id, B__r.Name From C__c]);
  //      System.debug(objlist);
    }  

}