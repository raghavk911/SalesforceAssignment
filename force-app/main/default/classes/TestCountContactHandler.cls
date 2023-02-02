/*
* @classname      TestCountContactHandler
* @author         Raghav
* @date           22-01-2023
* @description    This is Handler class of Trigger CountContactsOnAccount contain logic of count all contacts.
* 
* @modification log
* 1. Raghav        31-01-2023  Update the code indentation
* 2. Raghav        01-02-2023  Add Code Comments
*/
@isTest
public class TestCountContactHandler {
/*
* @methodname         testCountContactHelper
* @param              none
* @description        This method is used to counts the number of contact account and populate it on contact 
* @author             Raghav 
* @group              none
*/
  @isTest
  public static void testCountContactHelper(){
    CountContactHandler obj=new CountContactHandler();
    List<Account> accList=TestDataFactoryCountContactHandler.createAccount(1);
    List<Contact> oldcontactList=TestDataFactoryCountContactHandler.createContact('Raghav','Kadam');

    CountContactHandler.CountContactHelper(TestDataFactoryCountContactHandler.createContact('Raghav','Kadam'), oldcontactList);
    System.assertEquals(1, accList.size());

    List<Contact> newcontactList=[Select Id, accountId from Contact where Id=:oldcontactList];
    for(Contact con: newcontactList){
      con.AccountId=accList[0].Id;
      oldcontactList.add(con);
    }
    update newcontactList;
  }
}