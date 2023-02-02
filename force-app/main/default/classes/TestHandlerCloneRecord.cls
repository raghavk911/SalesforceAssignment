/*
* @classname      TestHandlerCloneRecord
* @author         Raghav
* @date           22-01-2023
* @description    This is Test class of HandlerCloneRecord that create clone records of Leads
* 
* @modification log
* 1. Raghav        31-01-2023  Update the code indentation 
* 2. Raghav        01-02-2023  Add Code Comments
*/
@isTest
public class TestHandlerCloneRecord {
/*
* @methodname         testRunOnce
* @param              none
* @description        This method is used for test logic of clone lead record creattion
* @return             none
* @author             Raghav 
* @group              none
*/
  @isTest
  public static void testRunOnce(){
    List<Lead> ldList = TestDataFactory.createLead(1);
    System.assertEquals(1, ldList.size());
    HandlerCloneRecord.runOnce();
  }
}