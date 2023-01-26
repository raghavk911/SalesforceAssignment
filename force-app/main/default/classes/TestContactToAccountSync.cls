@isTest
public class TestContactToAccountSync {
    @TestSetup
    public static void myTest(){
        // Account data has been created.
        List<Account> accList=New List<Account>();
        account acc=New Account();
        acc.Name='Test1';
        //acc.Description='Dec';
        accList.add(acc);
        Insert accList;
    }
    
    @isTest
    public static void testAfterInsertContact(){
    //data from test data factory
        List<Contact> cont=TestDataFactoryContactToAccountSync.createContact('Kadam','774388571',0);
		System.assertEquals(1, cont.size()); 
        
        //system.assertEquals(1, accList.size());
        list<contact>insertconlist=new list<contact>();
        Id accId=[Select Id from Account Limit 1].Id;
        for(Contact con: cont){
            con.AccountId = accId;
            insertconlist.add(con);
        }
        insert insertconlist; 
       
        
 //for insert method  
       List<Contact> updateconList=new List<Contact>();
        for(contact c:insertconlist){
            c.AssistantPhone='123';
            updateconList.add(c);
        }
		update updateconList; 
 
 //for delete method
 		delete updateconList;
        List<Contact> deleteconList=new List<Contact>();
        for(contact c:insertconlist){
            c.AssistantPhone=' ';
            updateconList.add(c);
        }
		update deleteconList; 

   

        
        //

        
    //for update method
       /* Map<Id,Contact>oldContactMap = new Map<Id,Contact>();
            for(Contact con: cont){
            con.AccountId = accId;
            oldContactMap.put(con.Id,con);
        }
        
        
        ContactToAccountSync obj=new ContactToAccountSync();
        obj.afterUpdateContacts(oldContactMap,insertconlist);
        

		//System.assertEquals(accId, cont[0].AccountId);

        //delete insertconlist;  */     
    }    
}