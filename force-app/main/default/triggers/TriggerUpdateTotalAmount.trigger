trigger TriggerUpdateTotalAmount on Opportunity (after insert,after update, after delete, after undelete) {
    UpdateTotalAmountHandler obj=new UpdateTotalAmountHandler();
    if (trigger.isAfter){
        
        if(trigger.isInsert){  
            obj.updateAmount(trigger.new);
        }
        if(trigger.isUpdate){  
            obj.updateAmount(trigger.new);
        }
        
        if(trigger.isDelete){  
            obj.updateAmount(trigger.old);
        }
        
        if(trigger.isUndelete){  
            obj.updateAmount(trigger.new);
        }
    }
}