/**  @classname           :   AggregateSoql
  *  @author              :   Raghavendra Kadam
  *  @date                :   01-Feb-2023
  *  @description         :   This is class retrive Aggregate Soql querries
  *  1.Raghavendra Kadam  :   Comments added 01-Feb-2023
*/
public with sharing class AggregateSoql {
/** @methodname           :   queOne
 *  @author               :   Raghavendra Kadam
 *  @description          :   Write a SOQL query to retrieve the sum of all closed Opportunity amounts for current
                              fiscal year. Store this information in a map with key as year and value as sum of amount.
                              Iterate this map to display statistics.
 *  @return               :   none
*/
  public void queOne(){
    List<AggregateResult> ls=[Select SUM(Amount) amt, FiscalYear fisc from Opportunity where (CloseDate > LAST_FISCAL_YEAR AND StageName LIKE'Closed %') group by FiscalYear];
    Map<Integer,Decimal> opptMap;
  
    for(AggregateResult result:ls){
    opptMap.put((Integer)result.get('fisc'),(Decimal)result.get('amt'));       
   }
      System.debug('=='+opptMap);
  }
  
/** @methodname           :   queTwo
 *  @author               :   Raghavendra Kadam
 *  @param                :   none
 *  @description          :   Find total number of distinct Lead records on the basis of 'Lead Source' 
 *                            having greater than 10 leads. Print this information.
 *  @return               :   none
*/
    public static void queTwo(){
      List<AggregateResult> ldList=[Select Id from Lead GROUP BY Id HAVING COUNT(LeadSource) > 10];
      for(AggregateResult ld:ldList){
        System.debug('=='+ld);
      }
    }

/** @methodname           :   queThree
 *  @author               :   Raghavendra Kadam
 *  @param                :   none
 *  @description          :   Write a SOQL query to find the total number of Lead records by status by Lead Source.
                              Store this information in a map and display the same.
                              (Hint:map<string,map<string,integer>>)
 *  @return               :   none
*/
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