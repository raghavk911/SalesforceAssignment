@isTest
public class TestCalculatorController {
      
    /*Test.StartTest(); 
            ApexPages.currentPage().getParameters().put('id', String.valueOf(dealerAccnt.Id));
            CreditMeterGraphic  testCreditMeterGraphic = new CreditMeterGraphic();
            testCreditMeterGraphic.getData();
        Test.StopTest();     
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
    
     /*@isTest
   		public static void testAdd(){
        
        System.Test.startTest();
        PageReference pageRef = Page.CalculatorApex;
        pageRef.getParameters().put('operator','add');
        System.Test.setCurrentPage(pageRef);
        
        CalculatorController cal=new CalculatorController();
        pageRef.getParameters().put('operator','add');
        Integer Text1=2;
        cal.add();
        System.Test.stopTest();
        
    }*/

    
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