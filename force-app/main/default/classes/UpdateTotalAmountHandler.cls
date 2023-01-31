public class UpdateTotalAmountHandler {
    
    public void updateAmount(List<Opportunity> opp){
        List<Account> accList=new List<Account>();
        Set<Id> oppId=new Set<Id>();
        for(Opportunity oppty:opp){
            oppId.add(oppty.AccountId);
        }
        
		System.debug('oppId=='+oppId); 
        //print ny honar pn app madhye disel debug console mdye verify kara. yethe Id bhetli   
        
        for(Account acc:[Select Id,Total_Amount__c, (Select Amount from Opportunities) from Account Where Id In: oppId]){
            acc.Total_Amount__c=0;
			            
            for(Opportunity oppty:acc.Opportunities){
                if(oppty.Amount!=Null){
                     acc.Total_Amount__c=acc.Total_Amount__c+oppty.Amount;
                }   
            }  
            accList.add(acc);
        }
        System.debug('accList=='+accList);
        update accList;

       /* List<Account>acctooppList=new List<Account>([Select Id, (Select Amount from Opportunities) from Account Where Id In: oppId]);
        System.debug('=='+acctooppList);
       List<Account> accList=new List<Account>();
        for(Account acc : acctooppList){
            acc.Total_Amount__c =0;
            for(Opportunity op:acc.Opportunities){
                acc.Total_Amount__c=acc.Total_Amount__c+op.amount;
            }   
            accList.add(acc);
            System.debug('updated List=='+accList);
            
        } 
         update accList;   } 
    
    public void deleteAmount(){
       
        List<Account>acctooppList=new List<Account>([Select Id, (Select Amount from Opportunities) from Account]);
      	System.debug('=='+acctooppList);

       // List<Account> =new List<Account>();
        for(Account acc:acctooppList){
            for(Opportunity opp: acc.Opportunities){
                acc.Total_Amount__c=acc.Total_Amount__c - opp.Amount;
            }
        //    delaccList.add(acc);
        //    System.debug('updated List=='+accList);
        }*/
        
    }
}