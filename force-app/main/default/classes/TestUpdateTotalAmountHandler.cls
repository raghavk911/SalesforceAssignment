/*
 * @classname             :  TestUpdateTotalAmountHandler
 * @author                :  Raghavendra Kadam
 * @date                  :  31-Jan-2022
 * @description           :  This is Test Class of class OpportunityAmountUpdateOnAccountTest
 
 * @modification log
 * 1. Raghavendra Kadam   :  01-Feb-2023  Update the code intentation
 * 2. Raghavendra Kadam   :  01-Feb-2023  Add Code Comments
 * 3. Raghavendra Kadam   :  03-Feb-2023  Updated code Indentation 
*/

@isTest
public class TestUpdateTotalAmountHandler {
/*
* @methodname             :  myTest
* @author                 :  Raghavendra Kadam
* @description            :  This method creates a Account and Opportunity Record
                             from TestDataFactory in testSetup Method
*/
  @TestSetup
  public Static void myTest(){
    List<Account> acc1 = TestDataFactory.accountData(1,True);
    List<Opportunity>  newOpp = new List<Opportunity>();
    List<Opportunity> opp = TestDataFactory.opportunityData(1,False);
   
    for(Opportunity o : opp)
    {
      o.AccountId = acc1[0].Id;
      o.Amount = 4000;
      newOpp.add(o);
    }
    Insert newOpp;
  }
/*
* @methodname         myOppyTest
* @author             Raghavendra Kadam 
* @description        This method tests whether account's related record is opportunity records
                      amount is being summed and got populated on Account Field
*/
  @isTest
  public Static void myOppyTest(){
    myTest();
    UpdateTotalAmountHandler obj = new UpdateTotalAmountHandler();
    List<Opportunity> opp = [Select Id, Name, Amount, Opportunity.AccountId From Opportunity where Name = 'Test Opportunity0' ];
    obj.updateAmount(opp);
    List<Account> acc = [Select Name, Total_Amount__c From Account where Name = 'Test Account 0'];
    System.assertEquals(acc.get(0).Total_Amount__c,4000,'Amount not found');
  }
}