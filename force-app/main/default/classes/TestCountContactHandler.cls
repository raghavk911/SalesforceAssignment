/*
 * @classname              :   TestCountContactHandler
 * @author                 :   Raghavendra Kadam
 * @date                   :   22-Jan-2023
 * @description            :   This is Test class of CountContactHandler contains logic of count all contacts
 * 
 * @modification log
 * 1. Raghavendra Kadam    :   31-Jan-2023  Update the code indentation
 * 2. Raghavendra Kadam    :   01-Feb-2023  Add Code Comments
*/
@isTest
public class TestCountContactHandler {
  @isTest
  public static void testCountContactHelper(){
    CountContactHandler obj=new CountContactHandler();
    List<Account> accList=TestDataFactoryCountContactHandler.createAccount(1);
    List<Contact> oldcontactList=TestDataFactoryCountContactHandler.createContact('Raghav','Kadam');
    CountContactHandler.CountContactHelper(TestDataFactoryCountContactHandler.createContact('Raghav','Kadam'), oldcontactList);
    System.assertEquals(2, accList.size());

  }
}