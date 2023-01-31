@RestResource(urlMapping='/Account/')
global class ApexIntegration {
    @HttpPost 
    global static string createAccount(String Name, String Phone, String ShippingCity, String ShippingCountry, String ShippingState, String ShippingPostalCode){
        
        //working in REST --> JSON 
        JSONGenerator gen = JSON.createGenerator(true);
        
        Account a=new Account();
        a.Name=Name;
        a.Phone=Phone;
        a.ShippingCity=ShippingCity;
        a.ShippingState=ShippingState;
        a.ShippingPostalCode=ShippingPostalCode;
        insert a;
        return a.Id;
        
        //here start --> write object
       // gen.writeStartObject();
        /*try{
        Account a=new Account();
        a.Name=Name;
        a.Phone=Phone;
        a.ShippingCity=ShippingCity;
        a.ShippingState=ShippingState;
        a.ShippingPostalCode=ShippingPostalCode;
        insert a;
        
        gen.writeBooleanField('isSuccess', true);
        gen.writeStringField('Account', a.Id);
        gen.writeStringField('status', 'Success');
        gen.writeEndObject();
        return gen.getAsString(); 
        }
        catch(exception e){
        gen.writeBooleanField('isSuccess', false);
        gen.writeStringField('Account', '');
        gen.writeStringField('status', 'Success');
        }*/
    }   
}