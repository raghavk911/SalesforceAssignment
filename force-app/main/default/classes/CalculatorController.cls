/**  @classname  			: CalculatorController
  *  @author 				: Raghav
  *  @date 					: 01-02-2023
  *  @description  			: This is class VFpage controller 
  *  @modification log		:	
  *  1. Comment added 01-02-2023
*/
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
/**  @methodname 	: button0Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button0Clicked() {
    val = (val==null)?'0':val + '0';
    return null;
  }
  
/**  @methodname 	: button1Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button1Clicked() {
    val = (val==null)?'1':val +'1';
    return null;
  }

/**  @methodname 	: button2Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button2Clicked() {
    val = (val==null)?'2':val + '2';
    return null;
  }

/**  @methodname 	: button3Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button3Clicked() {
    val = (val==null)?'3':val + '3';
    return null;
  }

/**  @methodname 	: button4Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button4Clicked() {
    val = (val==null)?'4':val + '4';
    return null;
  }

/**  @methodname 	: button5Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button5Clicked() {
    val = (val==null)?'5':val + '5';
    return null;
  }

/**  @methodname 	: button6Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button6Clicked() {
    val = (val==null)?'6':val + '6';
    return null;
  }

/**  @methodname 	: button7Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button7Clicked() {
    val = (val==null)?'7':val + '7';
    return null;
  }
  
/**  @methodname 	: button8Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button8Clicked() {
    val = (val==null)?'8':val + '8';
    return null;
  }
  
/**  @methodname 	: button9Clicked
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to get button clicked values of Calculator button
  *  @return 		: null
*/
  public pageReference button9Clicked() {
    val = (val==null)?'9':val + '9';
    return null;
  }

/**  @methodname 	: add
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to set Text1 value and send parameters to url
  *  @return 		: pageReference
*/
  public pageReference add(){
    if(this.Text1 == null){
       this.Text1 = Integer.valueOf(val);
    }
    pageReference p =Page.CalculatorApex;  
    p.getParameters().put('operator','add');
    p.getParameters().put('Text1',String.valueOf(Text1));
    p.setRedirect(true);
    return p;
  }
  
/**  @methodname 	: divide
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to set Text1 value and send parameters to url
  *  @return 		: pageReference
*/
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
/**  @methodname 	: multiply
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to set Text1 value and send parameters to url
  *  @return 		: pageReference
*/
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

/**  @methodname 	: subtract
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to set Text1 value and send parameters to url
  *  @return 		: pageReference
*/
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

/**  @methodname 	: getResult
  *  @author 		: Raghav
  *  @group  		: none
  *  @param  		: none
  *  @description   : This method used to set Text2 value and operate switch on for operation
  *  @return 		: none
*/
  public void getResult() {
 	Integer StartCpuTime=Limits.getCpuTime();
    pageReference p =Page.CalculatorApex;
    Text1 = Integer.valueOf(ApexPages.currentPage().getParameters().get('Text1'));
    val = (val==null)?'0':val;
    if(this.Text2 == null){
        this.Text2 = Integer.valueOf(val);
    }
    String  operator =ApexPages.currentPage().getParameters().get('operator');

    Switch on operator{
      when 'add'{
          val = String.valueOf(Text1 + Text2);
      }
      when 'sub'{
          val = String.valueOf(Text1 - Text2);
      }
      when 'mul'{
          val = String.valueOf(Text1 * Text2);
      }
      when 'div'{
          val = String.valueOf(Text1 / Text2);
      }
    }
	//Integer EndTime=
    System.debug('Time taken by CPU to execute method============'+String.valueof(Limits.getCpuTime()-StartCpuTime));
  }
}