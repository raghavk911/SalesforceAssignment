/*
 * @classname                   :  CalculatorController
 * @author                      :  Raghavendra Kadam
 * @date                        :  31-Jan-2023
 * @description                 :  This is Test Class of Vf Page controller parameter passing through url is done of operands
                                   Text1 and Text2 stores the values. The calculator arithmetic calculations are performed in the class
 * @modificationlog
 * 1. Raghavendra Kadam         :  01-Jan-2023  Update the code intentation
 * 2. Raghavendra Kadam         :  01-Jan-2023  Add Code Comments
 * 3. Raghavendra Kadam         :  03-Feb-2023  Modified Class and method comments 
*/
public with sharing class CalculatorController {
  public  string val{get;set;}
  public  Integer Text1;
  public  Integer Text2;

/*
 * @methodname       :  CalculatorController
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  This is constructor which stores operator if avaiable else it checks that 
                        operator is blank or not, if it is then stores value in val.
 * @return           :  none
*/
  public CalculatorController()
  {
    String operator =  ApexPages.currentPage().getParameters().get('operator');

    if(String.isBlank(operator))
    {
      val = ApexPages.currentPage().getParameters().get('val');
    }
  }

/*
 * @methodname       :  button0Clicked to button9Clicked
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  This method evokes calculator button when clicked, In first checks if the val variable is null then stores button value else
                        appends the button value with the existing value
 * @return           :  none
*/
  public pageReference button0Clicked()
  {
    val = (val==null)?'0':val + '0';
    return null;
  }
  public pageReference button1Clicked()
  {
     val = (val==null)?'1':val +'1';
     return null;
  }
  public pageReference button2Clicked()
  {
    val = (val==null)?'2':val + '2';
    return null;
  }
  public pageReference button3Clicked()
  {
    val = (val==null)?'3':val + '3';
    return null;
  } 
  public pageReference button4Clicked()
  {
    val = (val==null)?'4':val + '4';
    return null;
  }
  public pageReference button5Clicked()
  {
    val = (val==null)?'5':val + '5';
    return null;
  }
  public pageReference button6Clicked()
  {
    val = (val==null)?'6':val + '6';
    return null;
  }
  public pageReference button7Clicked() 
  {
    val = (val==null)?'7':val + '7';
    return null;
  }
  
  public pageReference button8Clicked() 
  {
    val = (val==null)?'8':val + '8';
    return null;
  }
  
  public pageReference button9Clicked() 
  {
    val = (val==null)?'9':val + '9';
    return null;
  } 

/*
 * @methodname       :  add
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  When add operator is Clicked it checks if the val variable contains value or not ,
                        then it checkes whether Text1 is null , then stores the first value in it,
                        and later puts Text1 and operator value on the url.
 * @return           :  pageReference
*/
  public pageReference add()
  {
    val = (val==null)?'0':val;

    if(this.Text1 == null)
    {
    this.Text1 = Integer.valueOf(val);  
    }

    pageReference p =Page.CalculatorApex;  
    p.getParameters().put('operator','add');
    p.getParameters().put('Text1',String.valueOf(Text1));
    p.setRedirect(true);
    return p;
  }

/*
 * @methodname       :  divide
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  When divde operator is Clicked it checks if the val variable contains value or not ,
                        then it checkes whether Text1 is null , then stores the first value in it,
                        and later puts Text1 and operator value on the url.
 * @return           :  pageReference
*/
  public pageReference divide()
   {
     val = (val==null)?'0':val;
     
     if(Text1 == null)
     {
       Text1 = Integer.valueOf(val);
     }

     pageReference pageRef =Page.CalculatorApex;  
     pageRef.getParameters().put('operator','div');
     pageRef.getParameters().put('Text1',String.valueOf(Text1));
     pageRef.setRedirect(true);
     return pageRef;
   }

/*
 * @methodname       :  multiply
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  When divde operator is Clicked it checks if the val variable contains value or not ,
                        then it checkes whether Text1 is null , then stores the first value in it,
                        and later puts Text1 and operator value on the url.
 * @return           :  pageReference
*/
  public pageReference multiply()
  {
    val = (val==null)?'0':val;
    if(Text1 == null){
      Text1 = Integer.valueOf(val);
    }
    pageReference pageRef =Page.CalculatorApex;  
    pageRef.getParameters().put('operator','mul');
    pageRef.getParameters().put('Text1',String.valueOf(Text1));
    pageRef.setRedirect(true);
    return pageRef;
  }

/*
 * @methodname       :  subtract
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  When subtract operator is Clicked it checks if the val variable contains value or not ,
                        then it checkes whether Text1 is null , then stores the first value in it,
                        and later puts Text1 and operator value on the url.
 * @return           :  pageReference
*/
  public pageReference subtract()
  {
    val = (val==null)?'0':val;
    if(this.Text1 == null)
    {
      Text1 = Integer.valueOf(val);
    }

    pageReference pageRef =Page.CalculatorApex;
    pageRef.getParameters().put('operator','sub');
    pageRef.getParameters().put('Text1',String.valueOf(Text1));
    pageRef.setRedirect(true);
    return pageRef;
  }

/*
 * @methodname       :  getResult
 * @author           :  Raghavendra Kadam
 * @param            :  none
 * @description      :  When = button is clicked in the CalculatorApex page then this method is called ,
                        in which CalculatorApex is set in pagereference , Text1 value retrived through url using getParamter Method,
                        it checks if val has some value present in it , then it checks whether Text2 is null or not , if it is then store the va vlue into it,
                        and gets the operator value from the url which later iterates in switch Statement, according to the operator value it calculates n displays the value.
 * @return           :  none
*/
    public pageReference getResult() 
  {
    pageReference pageRef =Page.CalculatorApex;
    Text1 = Integer.valueOf(ApexPages.currentPage().getParameters().get('Text1'));
    val = (val==null)?'0':val;

    if(this.Text2 == null)
    {
      this.Text2 = Integer.valueOf(val);
    }

    String  operator =ApexPages.currentPage().getParameters().get('operator');    
    
    Switch on operator{
      when 'add'{   
        val = String.valueOf(Text1 + Text2);
        pageRef.getParameters().put('val',val);
      }          
      when 'sub'{
        val = String.valueOf(Text1 - Text2); 
        pageRef.getParameters().put('val',val);
      }
      when 'mul'{
        val = String.valueOf(Text1 * Text2); 
        pageRef.getParameters().put('val',val);
      }
      when 'div'{
        val = String.valueOf(Text1 / Text2);
        pageRef.getParameters().put('val',val);
      }
    }
     pageRef.getParameters().put('val',val);
     pageRef.setRedirect(true);
     return pageRef;
  }
}