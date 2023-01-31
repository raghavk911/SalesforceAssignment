trigger ContactToAccountSyncTrig on Contact (after insert,after update,after delete) {
    if(trigger.isafter && trigger.isInsert){
        ContactToAccountSync cs=new ContactToAccountSync();
        cs.afterInsertContact(trigger.new);
    }
    if(trigger.isafter && trigger.isUpdate){
          ContactToAccountSync cs=new ContactToAccountSync();
        cs.afterUpdateContacts(trigger.oldMap,trigger.new);
    }
    if(trigger.isafter && trigger.isDelete){
         ContactToAccountSync cs=new ContactToAccountSync();
        cs.afterDeleteContacts(trigger.old);
    }
}