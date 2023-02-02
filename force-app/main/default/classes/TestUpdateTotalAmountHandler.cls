/*
* @classname      TestUpdateTotalAmountHandler
* @author         Raghav
* @date           22-01-2023
* @description    This is Test class of UpdateTotalAmountHandler which update total amount field on Account
* 
* @modification log
* 1. Raghav        31-01-2023  Update the code indentation 
* 2. Raghav        01-02-2023  Add Code Comments
*/
@isTest
public class TestUpdateTotalAmountHandler {
/*
* @methodname         updateAmount
* @param              none
* @description        This method is used for test logic of update total amount field of Account
* @return             none
* @author             Raghav 
* @group              none
*/
  @isTest
  public static void updateAmount(){
    List<Account>accList=TestDataFactory.createAccount(1);
    System.assertEquals(1, accList.size());

    List<Opportunity>oppList=TestDataFactory.createOpportunity(1);
    System.assertEquals(1, oppList.size());	
	oppList.get(0).AccountId=accList.get(0).Id;
    update oppList;
    System.assertEquals(8788, oppList.get(0).Amount);
  }
}