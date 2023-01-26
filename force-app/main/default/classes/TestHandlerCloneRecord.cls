@isTest
public class TestHandlerCloneRecord {
    @isTest
    public static void testRunOnce(){
        List<Lead> ldList = TestDataFactory.createLead(1);
        System.assertEquals(1, ldList.size());
        HandlerCloneRecord.runOnce();
    }
}