public class UpdateTotalAmountHandler {
    
    public void updateAmount(List<Opportunity> opp){
        List<Account> accList=new List<Account>();
        Set<Id> oppId=new Set<Id>();
        for(Opportunity oppty:opp){
            oppId.add(oppty.AccountId);
        }
        
		System.debug('oppId=='+oppId); 
        
        
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
        
    }
}