/*
*  @classname  			:   IntegrationApex
*  @author 				:   Raghav
*  @date 					:   01-02-2023
*  @description  			:   This is class of REST API Integration 
*  @modification log		:	
*  1. Comments added      :   01-02-2023
*/
@RestResource(urlMapping='/Account/*')
global class IntegrationApex {

/**  @methodname 	    :   doGet 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This method used for get request to other system
  *  @return 			:   none
*/
    @HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
/**  @methodname 	    :   createAccount 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   Name, Phone Number, Website
  *  @description       :   This method use for Post request to other system
  *  @return 			:   none
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
/**  @methodname 	    :   runOnce 
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This method use for delete request to other system
  *  @return 			:   none
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