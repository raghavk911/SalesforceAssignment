public with sharing class AggregateSoql {

/*1. Write a SOQL query to retrieve the sum of all closed Opportunity amounts for current
fiscal year. Store this information in a map with key as year and value as sum of amount.
Iterate this map to display statistics.*/

public void queOne(){
    List<AggregateResult> ls=[Select SUM(Amount) amt, FiscalYear fisc from Opportunity where (CloseDate > LAST_FISCAL_YEAR AND StageName LIKE'Closed %') group by FiscalYear];
    Map<Integer,Decimal> opptMap;

    for(AggregateResult result:ls){
     opptMap.put((Integer)result.get('fisc'),(Decimal)result.get('amt'));       
 }
    System.debug('=='+opptMap);
}

//2. Find total number of distinct Lead records on the basis of 'Lead Source' having greater
//than 10 leads. Print this information.
    public static void queTwo(){
        List<AggregateResult> ldList=[Select Id from Lead GROUP BY Id HAVING COUNT(LeadSource) > 10];
        for(AggregateResult ld:ldList){
                System.debug('=='+ld);
        }
    } 
    
/*3. Write a SOQL query to find the total number of Lead records by status by Lead Source.
    Store this information in a map and display the same.
    (Hint:map<string,map<string,integer>>)*/
    public static void queThree(){
    List<AggregateResult> ls= new List<AggregateResult>([Select COUNT(Name) NumberOfLead, Status stat from Lead group by Status]);
    Map<String,Integer> mapone= new Map<String,Integer>();
    for(AggregateResult result:ls){
        mapone.put((String)result.get('stat'), (Integer)result.get('NumberOfLead'));
        System.debug('=='+mapone);
    }

    List<AggregateResult> li=[Select LeadSource from Lead group by LeadSource];

    Map<String, Map<String,Integer>> maptwo= new Map<String, Map<String,Integer>>();
    for(AggregateResult result:li){
        maptwo.put((String)result.get('LeadSource'),mapone);
        System.debug('debug'+maptwo);
    }
}
	
   
}