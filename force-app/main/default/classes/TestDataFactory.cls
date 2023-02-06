/*
* @classname        :  TestDataFactory
* @author           :  Raghavendra Kadam 
* @date             :  13-Dec-2022
* @description      :  This is the TestDataFactory Class which will Create Different object Records

* @modification log
* 1. Raghavendra Kadam          :  01-Feb-2023  Update the code intentation
* 2. Raghavendra Kadam          :  01-Feb-2023  Add Code Comments
* 3. Raghavendra Kadam          :  03-Feb-2023 Mod
*/

@isTest
public class TestDataFactory {

/*
* @methodname     :    accountData
* @author         :    Raghavendra Kadam 
* @param          :    Integer,Boolean
* @description    :    This method  creates Account with Param num deciding
                       how many accounts should get created and flag for deciding
                       whether account list should be return or intserted
* @return         :    List<Account>
*/
  public Static  List<Account> accountData (Integer num,Boolean Flag){
   
    List<Account> accList = new  List<Account>();
   
    for(Integer i = 0 ; i< num ; i++)
    {
      Account a = new Account(Name = 'Test Account '+i, Phone ='10'+i);
      a.Industry = 'Agriculture';
      accList.add(a);
    }

    if(Flag == True)
    {
      Insert accList;
    }
    return accList;
  }

/**  
*  @methodname     :  contactDataNew
*  @author         :  Raghavendra Kadam 
*  @param          :  Integer,Boolean
*  @description    :  This method  creates contact with Param num deciding
                      how many contact should get created and flag for deciding
                      whether Contact list should be return or intserted
*  @return         :  List<Contact>
*/
  public Static  List<Contact> contactDataNew (Integer num, Boolean Flag){
   
    List<Contact> coList = new  List<Contact>();
   
    for(Integer i = 0 ; i< num ; i++)
    {
      Contact c = new Contact(LastName = 'Test Contact '+i, Phone ='10'+i);
      coList.add(c);
    }

    if(Flag == True)
    {
      Insert coList;
    }
    return coList;
  }

/*
* @methodname       :   OpportunityInsert
* @author           :   Raghavendra Kadam 
* @param            :   Integer,Boolean
* @description      :   This method  creates Lead with Param num deciding how many contact
                        should get created and flag for deciding
                        whether Lead  list should be return or intserted
* @return           :   List<lead>
*/

  public Static List<lead> leadRecord(Integer num, Boolean Flag){
    List<Lead> leadList = new List<Lead>();
    for(Integer i = 0 ; i <num ; i++)
    {
      Lead l = new lead(FirstName = 'LeadTesty'+i );
      l.LastName = 'TestLastName'+i ;
      l.City = 'shegaon';
      l.Country = 'India';
      l.Status = 'Web'+i;
      l.Company = 'naruto'+i;
      leadList.add(l);
    }

     if(Flag == True){
      Insert leadList;
    }
    return leadList;
  }

  /*
  * @methodname      :   OpportunityInsert
  * @author          :   Raghavendra Kadam 
  * @group           :   none
  * @param           :   Integer,Boolean
  * @description     :   This method  creates Lead with Param num deciding
                         how many contact should get created
                         and flag for deciding whether Lead  list should be return or intserted
  * @return          :   List<Opportunity>
  */

  public Static  List<Opportunity> opportunityData (Integer num, Boolean Flag){
  List<Opportunity> oppList = new  List<Opportunity>();
  for(Integer i = 0 ; i< num ; i++)
  {
    Opportunity o = new Opportunity(Name = 'Test Opportunity'+i);
    o.CloseDate = Date.newInstance(2023, 01, 01);
    o.StageName = 'Qualification';
    oppList.add(o);
  }
  if(Flag == True){
    Insert oppList;
  }
  return oppList;
  }
}