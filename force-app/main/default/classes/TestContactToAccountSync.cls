/*
* @classname       :  TestContactToAccountSync
* @author          :  Raghavendra Kadam
* @date            :  31-Jan-2022
* @description     :  This is Test Class of ContactToAccountSyncHandlerClass

* @modificationlog
* 1. Raghavendra Kadam         :  01-Feb-2023  Update the code intentation
* 2. Raghavendra Kadam         :  01-Feb-2023  Add Code Comments
* 3. Raghavendra Kadam         :  03-Feb-2023  Corrected Code Comments
*/
@isTest
public class TestContactToAccountSync{
/*
* @methodname       :  myTest
* @author           :  Raghavendra Kadam 
* @param            :  none
* @description      :  This method test the methods in the ContactToAccountSyncHandlerClass class 
                       where it creates a Account inserts it, later a contact gets created in which Contacts AccountId is rellated to the Account creater above,
                       so that contact is update and deleted n After calling ContactToAccountSyncHandlerClass class methods , System Assert is used to check
* @return           :  void
*/    
  @isTest
  public Static void myTest()
  {
    List<Account> accList = new  List<Account>();
    Account acc = new Account();
    acc.Name = 'Raghav';
    acc.BillingCity = 'Mumbai';
    acc.BillingState = 'Maharashtra';
    accList.add(acc);
    insert accList;

    List<Contact> conList = new  List<Contact>();
    //here two maps are taken ,  conMapNew map for inserting new contact and  conMapOld for inserting the update new Contact and later pass them  
    Map<Id,Contact> conMapNew = new Map<Id,Contact>();
    Map<Id,Contact> conMapOld = new Map<Id,Contact>(); 
    List<Contact> newConList = new List<Contact>();
    
    //Contact record for map
    Contact c1 = new Contact();
    c1.FirstName ='Raghavendra';
    c1.LastName = 'Kadam';
    c1.AccountId = acc.Id ;
    c1.MailingCity = 'Pune';
    c1.MailingState = 'Maharashtra';
    c1.AssistantPhone = '7743885718';
    newConList.add(c1);
    insert newConList;
    conMapOld.put(c1.Id, c1);
    
    //update above record
    c1.MailingCity = 'Satara';
    c1.AssistantPhone ='8668585741';
    c1.Description = c1.AssistantPhone;
    acc.Description = c1.Description;
    update newConList;
    update accList;
    conMapNew.put(c1.Id, c1);
    
    //afterdelete method 
    delete newConList;
    acc.Description = ' ';
    update accList;

    //check: After insertion of Account List is null or not
    ContactToAccountSync obj = new ContactToAccountSync();
    obj.afterInsertContact(conList);
    System.assertEquals(1,accList.size(), 'list null'); 

    //check: After updatating contact description is not null
    obj.afterUpdateContacts(conMapOld,newConList);
    System.assertNotEquals(Null,accList.get(0).Description, 'Description  null');
    
    //check: After Deleting the Contact description is not null
    obj.afterDeleteContacts(conList);
    System.assertEquals(' ',accList.get(0).Description, 'Description not null');
  }
}
