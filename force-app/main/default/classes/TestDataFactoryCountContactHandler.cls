@isTest
public class TestDataFactoryCountContactHandler {
  
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