/**
 *  @classname               :   IntegrationApex
 *  @author                  :   Raghavendra Kadam
 *  @date                    :   01-Feb-2023
 *  @description             :   This is class of REST API Integration 
 *  @modification log  
 *  1. Raghavendra Kadam     :   Class added 01-Feb-2023
 *  2. Raghavendra Kadam     :   Comments added 01-Feb-2023
 *  3. Raghavendra Kadam     :   Corrected comments 01-Feb-2023
*/
@RestResource(urlMapping='/Account/*')
global class IntegrationApex {

/** @methodname 	           :   doGet 
 *  @author                  :   Raghavendra Kadam
 *  @param                   :   none
 *  @description             :   This method used for get request to other system
 *  @return                  :   none
*/
  @HttpGet
  global static Account doGet() {
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
    Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
    return result;
  }
/** @methodname             :   createAccount 
 *  @author                  :   Raghavendra Kadam
 *  @param                   :   Name, Phone Number, Website
 *  @description             :   This method use for Post request to other system
 *  @return                  :   none
*/
  @httpPost
  global static string createAccount(String Name, String phone, String website){
    Account acc=new Account();
    acc.Name = name;
    acc.phone = phone;
    acc.website = website;
    insert acc;
    return acc.Id;
  }
/** @methodname              :   runOnce 
 *  @author                  :   Raghavendra Kadam
 *  @param                   :   none
 *  @description             :   This method use for delete request to other system
 *  @return                  :   none
*/
  @HttpDelete
  global static void doDelete() {
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
    Account account = [SELECT Id FROM Account WHERE Id = :accountId];
    delete account;
  }
}