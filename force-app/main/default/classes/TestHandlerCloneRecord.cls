/*
* @classname                :  TestHandlerCloneRecord
* @author                   :  Raghavendra Kadam
* @date                     :  22-Jan-2023
* @description              :  This is Test class of HandlerCloneRecord that create clone records of Leads
* 
* @modification log
* 1. Raghavendra Kadam      :   31-Jan-2023  Update the code indentation 
* 2. Raghavendra Kadam      :   01-Feb-2023  Add Code Comments
*/
@isTest
public class TestHandlerCloneRecord {
/*
* @methodname               :   testRunOnce
* @description              :   This method is used for test logic of clone lead record creattion
* @author                   :   Raghavendra Kadam 
*/
  @isTest
  public static void testRunOnce(){
    List<Lead> ldList = TestDataFactory.leadRecord(1,True);
    System.assertEquals(1, ldList.size());
    HandlerCloneRecord.runOnce();
  }
}