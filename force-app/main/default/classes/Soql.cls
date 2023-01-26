public class Soql {
	//Query on all Contact records and add them to the List. Print the contents of this list.
    public static void fetchContact(){
        List<Contact> conList=[SELECT Id, Name from Contact];
        system.debug(conList);
        /*
         * system.debug('conList :'+conList.size());
        for(Contact con: conList){
            System.debug(con);*/
        }    
    
    //Write a SOQL query to retrieve/print all active Users. Prepare a Map having User Id as
	//key and User record as value. (Hint : Map<Id,User>)
	
	public static void fetchUser(){
    	List<User> userls=[SELECT Id, IsActive from User];
        system.debug('userList :'+userls.size());
        
        Map<Id,User> usermap=new Map<Id,User>(Userls);
        system.debug('=='+usermap);

    }
    
    //3. Prepare the following map structures :
	//a. Account Name as key and AccountId as value.
	//b. Account Id as key and entire Account object as value.
	
  	/*	public static void fetchMap(){
        Map<Account, Id> mapId=new Map<Account, Id>();
   		Map<Id, Account> mapId=new Map<Id, Account>();
    }*/
    
    /*4. Create a multi-select picklist on Account object called as 'Enrollment Year' with values -
	2010, 2011, 2012, 2013, 2014, 2015 and 2016. Get all account records where selected
	'Enrollment Year' is:
		a. 2010 Select Id, Name from Account where Enrollment_Year__c ='2010' 
		b. 2013 and 2014 Select Id, Name from Account where Enrollment_Year__c ='2010' 
*/ 
    
    /*5. Write a SOQL query to find all Account records where 'Billing State' is not 'Maharashtra'
	and 'Kerala'. Order the results by Billing State in descending order with null values at the
	end. Display the first 10,000 records only. NOTE: do not use AND operator.

	*/
    public static void fetchNotInlude(){
    List<Account> acc=[Select Id, Name from Account where BillingState NOT IN('Maharashtra','Kerala') ORDER BY BillingState DESC LIMIT 10000];
        for(Account a:acc){
            System.debug('=='+a);
		}
    }

    /*6. Write a SOQL query to display 100 opportunity records with an amount greater than
    10,000 order by created date. Skip the first 50 records and include records from the recycle
    bin.*/	
    public static void queSix(){
    List<Opportunity> acc=[Select Id, Name from Opportunity where Amount >10000 order by CreatedDate asc limit 100 offset 50];
        for(Opportunity a:acc){
            System.debug('=='+a);
		}
    }
    
}