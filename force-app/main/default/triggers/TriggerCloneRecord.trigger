trigger TriggerCloneRecord on Lead (before insert) {
    HandlerCloneRecord obj=new HandlerCloneRecord();
    if(trigger.isInsert && trigger.isBefore){
        //HandlerCloneRecord.clone(trigger.new);
        
        if(HandlerCloneRecord.runOnce()) {
            
            List<Lead> leads = new List<Lead>();
            for (Lead record : trigger.new){
                leads.add(record.clone(false, false, false, false));
                //preserveId isDeepClone preserveReadonlyTimestamps preserveAutonumber
                //https://www.levelupsalesforce.com/clone-method-in-salesforce#:~:text=In%20salesforce%20the%20sObject%20class,be%20included%20in%20the%20clone.
            }
            if(leads.size()>0){
                INSERT leads;
            }
        }
    }
}