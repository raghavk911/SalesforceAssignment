/**  @classname  			:   TestCalculatorController
  *  @author 				:   Raghav
  *  @date 					:   01-02-2023
  *  @description  			:   This is Test class of CalculatorController which contain Calculator functionality
  *  @modification log		:	
  *  1. Comments added 01-02-2023
*/
@isTest
public class TestCalculatorController {

/**  @methodname 	    :   TestButton
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This test method test button click values
  *  @return 			:   none
*/
  @isTest
  public static void TestButton(){
    CalculatorController cal=new CalculatorController();
    cal.button0Clicked();
    cal.button1Clicked();
    cal.button2Clicked();
    cal.button3Clicked();
    cal.button4Clicked();
    cal.button5Clicked();
    cal.button6Clicked();
    cal.button7Clicked();
    cal.button8Clicked();
    cal.button9Clicked();
  }

/**  @methodname 	    :   testSubstract
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This test method test parameter passing to url for sustraction 
  *  @return 			:   none
*/
  @isTest
  public static void testSubstract(){
   System.Test.startTest();
   PageReference pageRef = Page.CalculatorApex;
   pageRef.getParameters().put('operator','sub');
   System.Test.setCurrentPage(pageRef);
   Integer Text1=2;
   CalculatorController cal=new CalculatorController();
   cal.subtract();
   System.Test.stopTest();
  }
  
/**  @methodname 	    :   testDivide
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This test method test parameter passing to url for division
  *  @return 			:   none
*/
  @isTest
  public static void testDivide(){
    System.Test.startTest();
    PageReference pageRef = Page.CalculatorApex;
    pageRef.getParameters().put('operator','div');
    Integer Text1=2;
    System.Test.setCurrentPage(pageRef);
    CalculatorController cal=new CalculatorController();
    cal.divide();
    System.Test.stopTest();
  }

/**  @methodname 	    :   testMultiply
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This test method test parameter passing to url for multiplication
  *  @return 			:   none
*/
  @isTest
  public static void testMultiply(){
    System.Test.startTest();
    PageReference pageRef = Page.CalculatorApex;
    pageRef.getParameters().put('operator','mul');
    Integer Text1=2;
    System.Test.setCurrentPage(pageRef);
    CalculatorController cal=new CalculatorController();
    cal.multiply();
    System.Test.stopTest();
  }
  
/**  @methodname 	    :   testResult
  *  @author 			:   Raghav
  *  @group  			:   none
  *  @param  			:   none
  *  @description       :   This test method test logic for calculation of arithmetic operations
  *  @return 			:   none
*/
  @isTest
  public static void testResult(){ 
    System.Test.startTest();
    PageReference pageRef = Page.CalculatorApex; 
    System.Test.setCurrentPage(pageRef);
    
    CalculatorController cal=new CalculatorController();
    pageRef.getParameters().put('Text1','20');
    cal.val = '10';
  
    pageRef.getParameters().put('operator','add');
    cal.getResult();
    System.assertEquals('30',String.valueOf(20+10));
    
    pageRef.getParameters().put('operator','sub');
    cal.getResult();
    System.assertEquals('10',String.valueOf(20-10));
    
    pageRef.getParameters().put('operator','mul');
    cal.getResult();
    System.assertEquals('200',String.valueOf(20*10));
    
    pageRef.getParameters().put('operator','div');
    cal.getResult();
    System.assertEquals('2',String.valueOf(20/10));
    System.Test.stopTest();
  }
}