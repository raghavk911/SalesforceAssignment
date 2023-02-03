public with sharing class ExampleWrapper {
        public class FeeWrapper{
            List<Account> acco;
            List<Contact> cont;
            List<Opportunity> oppt;
        }
        
        public void fetchdata(){
    
            for(Account ac:[Select Id from Account LIMIT 1]){
                //system.debug('Account ac::'+ac);
                FeeWrapper f=new FeeWrapper();
                f.acco=new List<Account>();
                   f.acco.add(ac);
                system.debug('Student Account Id::'+f.acco);
            }
           
            for(Contact co:[Select Id, FirstName, LastName, Phone from Contact LIMIT 1]){
                //system.debug('Contact co::'+co);
                FeeWrapper t=new FeeWrapper();
                t.cont=new List<Contact>();
                t.cont.add(co);
                system.debug('Student Contact Id, First Name, Last Name::'+t.cont);
            }
            
            for(Opportunity op:[Select Id, amount from Opportunity LIMIT 1]){
                //system.debug('Opportunity op::'+op);
                FeeWrapper g=new FeeWrapper();
                g.oppt=new List<Opportunity>();
                g.oppt.add(op);
                system.debug('Student Opportunity Id, Amount::'+g.oppt);
            }   
        }  
       
}