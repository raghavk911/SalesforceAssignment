/*
*  @classname  			:   ParentToChild
*  @author 				:   Raghav
*  @date 				:   01-02-2023
*  @description  		:   This is class retrive Soql querries
*  1. Comments added    :   01-02-2023
*/
public with sharing class ParentToChild {
/**  @methodname 	    :   queOne
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   Write a SOQL query on Account and find all associated contact records of the Account
                            which contains the Name as 'John'. Print all Account and Contact records retrieved above.
  *  @return 			:   none
*/
public static void queOne(){
  for(Account a:[Select Name, (Select Id, Name from contacts where Name='John') from Account]){
      System.debug('=='+a);
    }
  }
/**  @methodname 	    :   queTwo
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   Write a SOQL query to find all Account records which have at least an opportunity record
                            which is 'Closed Won'.
  *  @return 			:   none
*/
public static void queTwo(){

  for(Account acc:[Select Name, (Select Id, StageName from Opportunities Where StageName='Closed Won') from Account]){
      System.debug('=='+acc); 
    }
  }

/*
*  @methodname 	    :   queTwo
*  @author 			:   Raghav
*  @group  			:   none
*  @param  			:   none
*  @description     :   Write a SOQL query on 'A' and retrieve all parents with all their child records where the
                        child name is 'John'. 
*  @return 			:   none
*/

  public static void queThree(){
  for(A__c a:[Select ID, Name,(Select Id, Name from C__r ) from A__c ]){
      System.debug('=='+a); 
    }
  }
}