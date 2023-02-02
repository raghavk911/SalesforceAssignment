/*
* @classname      TestDataFactoryContactToAccountSync
* @author         Raghav
* @date           22-01-2023
* @description    This is Test Data Factory class
* 
* @modificationlog
* 1. Raghav        31-01-2023  Update the code indentation
* 2. Raghav        01-02-2023  Add Code Comments
*/

@isTest
public class TestDataFactoryContactToAccountSync {
/*
* @methodname         createContact
* @param              NumOfOpp
* @description        This method is used for create data of Contact
* @return             list of Contact
* @author             Raghav 
* @group              none
*/
  public static List<Contact> createContact(String lnm, String ph, Integer NumOfAccount){
    List<Contact> conList=new List<Contact>();
    for(Integer i=0; i<=NumOfAccount; i++){
      Contact con=new Contact();
      con.LastName =lnm;
      con.AssistantPhone=ph;
      conList.add(con);
    }
    return conList;
  }
}