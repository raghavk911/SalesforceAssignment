@isTest
public class TestUpdateTotalAmountHandler {
    
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