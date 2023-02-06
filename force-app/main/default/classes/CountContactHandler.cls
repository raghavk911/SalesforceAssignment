/*
 * @classname              :   CountContactHandler
 * @author                 :   Raghavendra Kadam
 * @date                   :   22-Jan-2023
 * @description            :   This is Handler class of Trigger CountContactsOnAccount contain logic of count all contacts
 * 
 * @modification log
 * 1. Raghavendra Kadam    :   31-Jan-2023  Update the code indentation
 * 2. Raghavendra Kadam    :   01-Feb-2023  Add Code Comments
*/

public class CountContactHandler {
/** 
 * @methodname              :  CountContactHelper
 * @param                   :  List<contact>, List<contact>
 * @description             :  This method is used for result calculation of operator
 * @return                  :  none
 * @author                  :  Raghavendra Kadam 
*/
  public static void CountContactHelper(List<contact> newcontact, List<contact> oldcontact){
    set<id> accIds= new set<id>();
    if(newcontact != null){
      for(Contact c : newcontact){
        if(c.AccountId!=null){
          accIds.add(c.accountid);
        }
      }
    }
    if(oldcontact != null){
        for(Contact c : oldcontact){
          accIds.add(c.accountid);
        }
    }
    List<Account> accList = [Select Id, NoofContacts__c, (Select id from Contacts) from Account where Id IN :accIds];
    if(accList!=null){
      for(Account acc : accList){
        acc.NoofContacts__c = acc.Contacts.size();
      }
    }
    if(!accList.isEmpty()){
      update accList;
    }
  }
}