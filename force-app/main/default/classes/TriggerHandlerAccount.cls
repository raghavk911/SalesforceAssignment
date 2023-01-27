public with sharing class TriggerHandlerAccount {
    public void accountContactTrigger(List<Account> allacc){
        List<Contact> conList=new List<Contact>();       
        for(Account acc:allacc){
            if(acc.Industry!='Other'){
                Contact con=new Contact();
                con.LastName=acc.Name;
                con.Phone=acc.Phone;
                con.AccountId=acc.Id;
                conList.add(con);
            }          
        }
        insert conList;
    }
}