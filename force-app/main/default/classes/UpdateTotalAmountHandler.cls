/*
* @classname      UpdateTotalAmountHandler
* @author         Raghav
* @date           22-01-2023
* @description    This is Handler class of Trigger TriggerUpdateTotalAmount which update total amount field on Account
* 
* @modification log
* 1. Raghav        31-01-2023  Update the code indentation
* 2. Raghav        01-02-2023  Add Code Comments
*/

public class UpdateTotalAmountHandler {
/*
* @methodname         updateAmount
* @param              List of Opportunity
* @description        This method is used for update total amount field of Account
* @return             List of Account
* @author             Raghav 
* @group              none
*/
  public void updateAmount(List<Opportunity> opp){
    List<Account> accList=new List<Account>();
    Set<Id> oppId=new Set<Id>();
    for(Opportunity oppty:opp){
      oppId.add(oppty.AccountId);
    }
    for(Account acc:[Select Id,Total_Amount__c, (Select Amount from Opportunities) from Account Where Id In: oppId]){
      acc.Total_Amount__c=0;
      for(Opportunity oppty:acc.Opportunities){
        if(oppty.Amount!=Null){
          acc.Total_Amount__c=acc.Total_Amount__c+oppty.Amount;
        }
      }
      accList.add(acc);
    }
    update accList;
  }
}