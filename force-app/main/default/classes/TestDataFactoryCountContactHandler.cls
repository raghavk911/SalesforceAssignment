/*
 * @classname               :   TestDataFactoryCountContactHandler
 * @author                  :   Raghavendra Kadam
 * @date                    :   22-Jan-2023
 * @description             :   This is Test Data Factory of CountContactHandler
 * 
 * @modification log
 * 1. Raghavendra Kadam     :   31-Jan-2023  Updated the code indentation 
 * 2. Raghavendra Kadam     :   01-Feb-2023  Added Code Comments
 * 2. Raghavendra Kadam     :   02-Feb-2023  Corrected Code Comments
*/
@isTest
public class TestDataFactoryCountContactHandler {
/*
 * @methodname              :   createContact
 * @param                   :   First Name, Last Name
 * @description             :   This method is used for create Contacts for Test Data Factory
 * @return                  :   List of Contact
 * @author                  :   Raghavendra Kadam 
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
 * @methodname              :   createAccount
 * @param                   :   Integer Number of accounts
 * @description             :   This method is used for create Accounts for Test Data Factory
 * @return                  :   List of Accounts
 * @author                  :   Raghavendra Kadam 
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