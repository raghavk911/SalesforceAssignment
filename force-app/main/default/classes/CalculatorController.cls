public with sharing class CalculatorController {
    public  string val{get;set;}
    public  Integer Text1;
    public  Integer Text2;
   
    public CalculatorController(){
        String operator =  ApexPages.currentPage().getParameters().get('operator');
        if(String.isBlank(operator)){
            val = ApexPages.currentPage().getParameters().get('val');

        }
    }
   
    public pageReference button0Clicked() {
        val = (val==null)?'0':val + '0';
        return null;
    }  
   
    public pageReference button1Clicked() {
        val = (val==null)?'1':val +'1';
        return null;
    }
    public pageReference button2Clicked() {
        val = (val==null)?'2':val + '2';
        return null;
    }
    public pageReference button3Clicked() {
       
        val = (val==null)?'3':val + '3';
        return null;
    }
   
    public pageReference button4Clicked() {
        val = (val==null)?'4':val + '4';
        return null;
    }
    public pageReference button5Clicked() {
        val = (val==null)?'5':val + '5';
        return null;
    }
    public pageReference button6Clicked() {
        val = (val==null)?'6':val + '6';
        return null;
    }
    public pageReference button7Clicked() {
        val = (val==null)?'7':val + '7';
        return null;
    }
   
    public pageReference button8Clicked() {
        val = (val==null)?'8':val + '8';
        return null;
    }
   
    public pageReference button9Clicked() {
        val = (val==null)?'9':val + '9';
        return null;
    }

    public pageReference add(){

        if(this.Text1 == null){
           this.Text1 = Integer.valueOf(val);
           
        }  
        System.debug('Text1=='+Text1);
        pageReference p =Page.CalculatorApex;  
        p.getParameters().put('operator','add');
        p.getParameters().put('Text1',String.valueOf(Text1));
        p.setRedirect(true);
        return p;
               
    }
   
    public pageReference divide() {
        val = (val==null)?'0':val;
        if(Text1 == null){
            Text1 = Integer.valueOf(val);
        }  
        pageReference p =Page.CalculatorApex;  
        p.getParameters().put('operator','div');
        p.getParameters().put('Text1',String.valueOf(Text1));
        p.setRedirect(true);
        return p;
       
    }
    public pageReference multiply() {
        val = (val==null)?'0':val;
        if(Text1 == null){
            Text1 = Integer.valueOf(val);
        }  
        pageReference p =Page.CalculatorApex;  
        p.getParameters().put('operator','mul');
        p.getParameters().put('Text1',String.valueOf(Text1));
        p.setRedirect(true);
        return p;
       
    }
    public pageReference subtract() {
        val = (val==null)?'0':val;
        if(this.Text1 == null){
            Text1 = Integer.valueOf(val);
        } 
        pageReference p =Page.CalculatorApex;  
        p.getParameters().put('operator','sub');
        p.getParameters().put('Text1',String.valueOf(Text1));
        p.setRedirect(true);
        return p;
    }
   
   
    public void getResult() {
 		Integer StartCpuTime=Limits.getCpuTime();
        pageReference p =Page.CalculatorApex;
        Text1 = Integer.valueOf(ApexPages.currentPage().getParameters().get('Text1'));
         System.debug('Text1=='+Text1);
        val = (val==null)?'0':val;
        // System.debug('val in result=='+val);
        if(this.Text2 == null){
            this.Text2 = Integer.valueOf(val);       
            System.debug('Text2=='+Text2);         
        }
        String  operator =ApexPages.currentPage().getParameters().get('operator');
        System.debug('operator value== '+operator);
       
        Switch on operator{
            when 'add'{  
                System.debug('Text1 value== '+Text1);
                System.debug('Text2 value== '+Text2);
                val = String.valueOf(Text1 + Text2);
                System.debug('val Addition'+val);              
            }
            when 'sub'{
                val = String.valueOf(Text1 - Text2);
                System.debug('val Subtraction'+val); 
            }
            when 'mul'{
                val = String.valueOf(Text1 * Text2);
                System.debug('val Multiplication'+val); 
            }
            when 'div'{
                val = String.valueOf(Text1 / Text2);
                System.debug('val Division'+val); 
            }
         
        }  
		//Integer EndTime=
        System.debug('Time taken by CPU to execute method============'+String.valueof(Limits.getCpuTime()-StartCpuTime));
    }
}