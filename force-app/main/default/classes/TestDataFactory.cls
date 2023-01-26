@isTest
public class TestDataFactory {
    public static List<Opportunity> createOpportunity(Integer NumOfOpp){
        
        List<Opportunity>oppList=new List<Opportunity>();
        for(Integer i=0; i<NumOfOpp;i++){   
            Opportunity obj=new Opportunity();
            obj.Name='Test'+i;
            obj.Amount=8788;
            obj.CloseDate=Date.newInstance(2022, 03, 28);
            obj.StageName='Closed Won';
            oppList.add(obj);
        }
        insert oppList;
        return oppList;
    }
    
    public static List<Account> createAccount(Integer NumOfOpp){   
        List<Account>accList=new List<Account>();
        for(Integer i=0; i<NumOfOpp; i++){   
            Account acc=new Account();
            acc.Name='Test'+i;
            acc.Total_Amount__c=0;
            accList.add(acc);
            
        }
        insert accList;
        return accList;
    }
    
    public static List<Lead> createLead(Integer NumOfOpp){      
        List<Lead>ldList=new List<Lead>();
        for(Integer i=0; i<NumOfOpp; i++){   
            Lead ld=new Lead();
            ld.LastName='Test'+i;
            ld.Company='Company'+i;
            ld.Status='Closed - Converted';
            ldList.add(ld);
        }
           return ldList;
    }
    
}