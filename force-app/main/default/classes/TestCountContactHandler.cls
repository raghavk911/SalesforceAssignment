@isTest
public class TestCountContactHandler {
    
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