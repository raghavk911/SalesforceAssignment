@isTest
public class TestDataFactoryContactToAccountSync {
    
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