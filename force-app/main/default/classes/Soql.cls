/** @classname           :   Soql
 *  @author              :   Raghavendra Kadam
 *  @date                :   01-Feb-2023
 *  @description         :   This is class retrive Soql querries
 *  1.Raghavendra Kadam  :   Comments added 01-Feb-2023
*/
public class Soql {
/** @methodname          :   fetchContact
 *  @author              :   Raghavendra Kadam
 *  @description         :   Query on all Contact records and add them to the List. Print the contents of this list.
*/
  public static void fetchContact(){
    List<Contact> conList=[SELECT Id, Name from Contact];
    system.debug(conList);
  }

/** @methodname          :   fetchUser
 *  @author              :   Raghavendra Kadam
 *  @description         :   Write a SOQL query to retrieve/print all active Users. Prepare a Map having User Id as
                             key and User record as value. (Hint : Map<Id,User>)
*/
  public static void fetchUser(){
  List<User> userls=[SELECT Id, IsActive from User];
    system.debug('userList :'+userls.size());
    Map<Id,User> usermap=new Map<Id,User>(Userls);
    system.debug('=='+usermap);
  }

/** @methodname          :   fetchMap
 *  @author              :   Raghavendra Kadam
 *  @description         :   Prepare the following map structures :
                             Account Name as key and AccountId as value
                             Account Id as key and entire Account object as value.
*/

  //a. Account Id as key and entire Account object as value.
  public void fetchMap(){
    Map<String,String> accMap = new  Map<String,String>();
    for(Account a : [Select Id,Name from Account]){
        accMap.put(a.Id,a.Name);
    }
   
    //b. Account Id as key and entire Account object as value.
    Map<Id,Account> accMap1 = new  Map<Id,Account>();
}

/**
 *  @methodname           :   getYear
 *  @author               :   Raghavendra Kadam
 *  @param                :   none
 *  @description          :   Create a multi-select picklist on Account object called as 'Enrollment Year' with values -
                              2010, 2011, 2012, 2013, 2014, 2015 and 2016. Get all account records where selected
                              'Enrollment Year' is: a. 2010 Select Id, Name from Account where Enrollment_Year__c ='2010'
                              b. 2013 and 2014 Select Id, Name from Account where Enrollment_Year__c ='2010
 *  @return               :   none
*/

public void getYear(){
  List<Account> acctList = new List<Account>();
  acctList = [Select Id, Name, Enrollment_Year__c From Account Where Enrollment_Year__c INCLUDES('2013','2014')];
  System.debug('Account records of year 2013 & 2014-'+acctList);
  
  List<Account> acctList1 = new List<Account>();
  acctList1 = [Select Id, Name, Enrollment_Year__c From Account Where Enrollment_Year__c ='2010'];
  System.debug('Account records of year 2010-'+acctList1);
}

/**
 *  @methodname         :   fetchNotInlude
 *  @author             :   Raghavendra Kadam
 *  @param              :   none
 *  @description        :   Write a SOQL query to find all Account records where 'Billing State' is not 'Maharashtra'
                            and 'Kerala'. Order the results by Billing State in descending order with null values at the
                            end. Display the first 10,000 records only. NOTE: do not use AND operator.
 *  @return             :   none
*/
  public static void fetchNotInlude(){
  List<Account> acc=[Select Id, Name from Account where BillingState NOT IN('Maharashtra','Kerala') ORDER BY BillingState DESC LIMIT 10000];
    for(Account a:acc){
      System.debug('=='+a);
	}
  }

/**
 * @methodname           :   queSix
 * @author               :   Raghavendra Kadam
 * @description          :   Write a SOQL query to display 100 opportunity records with an amount greater than
                             10,000 order by created date. Skip the first 50 records and include records from the recycle bin.
*/
  public static void queSix(){
  List<Opportunity> acc=[Select Id, Name from Opportunity where Amount >10000 order by CreatedDate asc limit 100 offset 50];
    for(Opportunity a:acc){
      System.debug('=='+a);
	  }
  }
}