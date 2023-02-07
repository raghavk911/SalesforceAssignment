/** @classname            :   TestCalculatorController
 *  @author               :   Raghavendra Kadam
 *  @date                 :   01-Feb-2023
 *  @description          :   This is Test class of CalculatorController which contain Calculator functionality
 *  @modification log
 *  1. Raghavendra Kadam  :   Class added 01-Feb-2023
 *  2. Raghavendra Kadam  :   Comments added 02-Feb-2023
 *  3. Raghavendra Kadam  :   Corrected comments 03-Feb-2023
*/
@isTest
public class TestCalculatorController {

/**  @methodname          :   TestButton
  *  @author              :   Raghavendra Kadam
  *  @description         :   This test method test button click values
*/
  @isTest
  public static void TestButton(){
    CalculatorController cal=new CalculatorController();
    cal.val=Null;
    cal.button0Clicked();
    System.assertEquals('0', Cal.val, 'Error: The value of button 0 has not been recived');
    
    cal.val=Null;
    cal.button1Clicked();
    System.assertEquals('1', Cal.val, 'Error: The value of button 1 has not been recived');
     
    cal.val=Null;
    cal.button2Clicked();
    System.assertEquals('2', Cal.val, 'Error: The value of button 2 has not been recived');
    
    cal.val=Null;
    cal.button3Clicked();
    System.assertEquals('3', Cal.val, 'Error: The value of button 3 has not been recived');
     
    cal.val=Null;
    cal.button4Clicked();
    System.assertEquals('4', Cal.val, 'Error: The value of button 4 has not been recived');
      
    cal.val=Null;
    cal.button5Clicked();
    System.assertEquals('5', Cal.val, 'Error: The value of button 5 has not been recived');
    
    cal.val=Null;
    cal.button6Clicked();
    System.assertEquals('6', Cal.val, 'Error: The value of button 6 has not been recived');
    
    cal.val=Null;
    cal.button7Clicked();
    System.assertEquals('7', Cal.val, 'Error: The value of button 7 has not been recived');
      
    cal.val=Null;
    cal.button8Clicked();
    System.assertEquals('8', Cal.val, 'Error: The value of button 8 has not been recived');
    
    cal.val=Null;
    cal.button9Clicked();
    System.assertEquals('9', Cal.val, 'Error: The value of button 9 has not been recived');
  }
/**  @methodname          :   testAdd
 *  @author               :   Raghavendra Kadam
 *  @description          :   This test method test parameter passing to url for sustraction 
*/
  @isTest
  public static void testAdd(){
   System.Test.startTest();
   CalculatorController cal=new CalculatorController();
   PageReference pageRef = Page.CalculatorApex;
   pageRef.getParameters().put('operator','add');
   pageRef.getParameters().put('Text1',String.valueOf(Cal.Text1));
   System.Test.setCurrentPage(pageRef);
   cal.add();
   System.Test.stopTest();
   String Value = pageRef.getParameters().get('operator');
   System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
  }
/** @methodname           :   testSubstract
 *  @author               :   Raghavendra Kadam
 *  @description          :   This test method test parameter passing to url for sustraction 
*/
  @isTest
  public static void testSubstract(){
   System.Test.startTest();
   CalculatorController cal=new CalculatorController();
   PageReference pageRef = Page.CalculatorApex;
   pageRef.getParameters().put('operator','sub');
   System.Test.setCurrentPage(pageRef);
   pageRef.getParameters().put('Text1',String.valueOf(Cal.Text1));
   cal.subtract();
   System.Test.stopTest();
   String Value = pageRef.getParameters().get('operator');
   System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
  }
  
/** @methodname           :   testDivide
 *  @author               :   Raghavendra Kadam
 *  @description          :   This test method test parameter passing to url for division
*/
  @isTest
  public static void testDivide(){
    System.Test.startTest();
    CalculatorController cal=new CalculatorController();
    PageReference pageRef = Page.CalculatorApex;
    pageRef.getParameters().put('operator','div');
    pageRef.getParameters().put('Text1',String.valueOf(Cal.Text1));
    System.Test.setCurrentPage(pageRef);
    
    cal.divide();
    System.Test.stopTest();
    String Value = pageRef.getParameters().get('operator');
    System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
  }

/**  @methodname          :   testMultiply
 *  @author               :   Raghavendra Kadam
 *  @description          :   This test method test parameter passing to url for multiplication
*/
  @isTest
  public static void testMultiply(){
    System.Test.startTest();
    CalculatorController cal=new CalculatorController();
    PageReference pageRef = Page.CalculatorApex;
    pageRef.getParameters().put('operator','mul');
    //Integer Text1=2;
    pageRef.getParameters().put('Text1',String.valueOf(Cal.Text1));
    System.Test.setCurrentPage(pageRef);
    cal.multiply();
    System.Test.stopTest();
    String Value = pageRef.getParameters().get('operator');
    System.assertEquals(Value,ApexPages.currentPage().getParameters().get('operator'),'Paramters operator value not matched');
  }
  
/**  @methodname          :   testResult
  *  @author              :   Raghavendra Kadam
  *  @description         :   This test method test logic for calculation of arithmetic operations
*/
  @isTest
  public static void testResult(){ 
    System.Test.startTest();
    PageReference pageRef = Page.CalculatorApex; 
    System.Test.setCurrentPage(pageRef);
      
    CalculatorController cal=new CalculatorController();
    pageRef.getParameters().put('Text1','10');
    pageRef.getParameters().put('operator','sub');
    cal.val = '2';
    cal.getResult();
    String substraction = pageRef.getParameters().get('val');
    System.assertEquals(substraction,ApexPages.currentPage().getParameters().get('val'),'Error: Substraction failed');
	
    pageRef.getParameters().put('operator','add');
    cal.getResult();
    String addition = pageRef.getParameters().get('val');
    System.assertEquals(addition,ApexPages.currentPage().getParameters().get('val'),'Error: Addition failed');
      
    pageRef.getParameters().put('operator','mul');
    cal.getResult();
    String multiplication = pageRef.getParameters().get('val');
    System.assertEquals(multiplication,ApexPages.currentPage().getParameters().get('val'),'Error: Mulltiplication failed');
      
    pageRef.getParameters().put('operator','div');
    cal.getResult();
    String divide = pageRef.getParameters().get('val');
    System.assertEquals(divide,ApexPages.currentPage().getParameters().get('val'),'Error: Division failed'); 
  }
}