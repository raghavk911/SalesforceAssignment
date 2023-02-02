/*
* @classname      TestContactToAccountSync
* @author         Raghav
* @date           02-02-2023
* @description    This is Test class ContactToAccountSync
* 
* @modificationlog
* 1. Raghav        02-02-2023  Update the code indentation
* 2. Raghav        02-02-2023  Add Code Comments
*/

@isTest
public class TestContactToAccountSync {
  @TestSetup
  public static void myTest(){
      List<Account> accList=New List<Account>();
      account acc=New Account();
      acc.Name='Test1';
      accList.add(acc);
      Insert accList;
  }
/*
* @methodname         testAfterInsertContact
* @param              none
* @description        This method is used to populates the account field after DML of related account
* @author             Raghav 
* @group              none
*/
  @isTest
  public static void testAfterInsertContact(){
      List<Contact> cont=TestDataFactoryContactToAccountSync.createContact('Kadam','774388571',0);
	  System.assertEquals(1, cont.size());
      list<contact>insertconlist=new list<contact>();
      Id accId=[Select Id from Account Limit 1].Id;
      for(Contact con: cont){
        con.AccountId = accId;
        insertconlist.add(con);
      }
      insert insertconlist; 

     List<Contact> updateconList=new List<Contact>();
      for(contact c:insertconlist){
        c.AssistantPhone='123';
        updateconList.add(c);
      }
	update updateconList; 
 	delete updateconList;
      List<Contact> deleteconList=new List<Contact>();
      for(contact c:insertconlist){
        c.AssistantPhone=' ';
        updateconList.add(c);
      }
	update deleteconList; 
  }
}