/*
* @classname      TestDataFactoryCountContactHandler
* @author         Raghav
* @date           22-01-2023
* @description    This is Test Data Factory of CountContactHandler
* 
* @modification log
* 1. Raghav        31-01-2023  Update the code indentation 
* 2. Raghav        01-02-2023  Add Code Comments
*/
@isTest
public class TestDataFactoryCountContactHandler {
/*
* @methodname         createContact
* @param              First Name, Last Name
* @description        This method is used for create Contacts for Test Data Factory
* @return             List of Contact
* @author             Raghav 
* @group              none
*/
  public static List<Contact> createContact(String fnm, String lnm){
    List<Contact> conList=new List<Contact>();
    for(Integer i=0; i<=30; i++){
      Contact con=new Contact();
      con.FirstName=fnm;
      con.LastName=lnm;
      conList.add(con);
    }
    return conList;
  }
/*
* @methodname         createAccount
* @param              Number of Accounts
* @description        This method is used for create Accounts for Test Data Factory
* @return             List of Account
* @author             Raghav 
* @group              none
*/
  public static List<Account> createAccount(Integer NumOfAcc){
   List<Account> accList= new List<Account>();
    for(Integer i=0; i<=NumOfAcc; i++){
      Account acc=new Account();
      acc.NoofContacts__c=2;
      acc.Name='TestAccount'+i;
      accList.add(acc);
    }
    return accList;
  }
}