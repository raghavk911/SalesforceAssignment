public class WrapperExample {
    public class FeeWrapper{
		List<Account> acco;
        List<Contact> cont;
        List<Opportunity> oppt;
    }
    
    public void fetchdata(){
        for(Account ac:[Select Id from Account]){
            FeeWrapper f=new FeeWrapper();
           	f.acco.add(ac);
        }
       
        for(Contact co:[Select Id, FirstName, LastName, Phone from Contact]){
            FeeWrapper t=new FeeWrapper();
            t.cont.add(co);
        }
        
        for(Opportunity op:[Select Id, amount from Opportunity]){
            FeeWrapper g=new FeeWrapper();
            g.oppt.add(op);
        }   
    }  
    
    public static void print(){
        FeeWrapper pr=new FeeWrapper();
        system.debug('Student Account Id::'+pr.acco);
        system.debug('Student Contact Id, First Name, Last Name::'+pr.cont);
        system.debug('Student Opportunity Id, Amount::'+pr.oppt);
    }

}