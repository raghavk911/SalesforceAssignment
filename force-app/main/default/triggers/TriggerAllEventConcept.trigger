/**  @classname             :   TriggerAllEventConcept
  *  @author                :   Raghavendra Kadam
  *  @date                  :   01-Jan-2023
  *  @description           :   This trigger contain after before use of context variables
  *  @modification log      
  *  1. Raghavendra Kadam   :   Code comments added 01-Jan-2023
  *  2. Raghavendra Kadam   :   Corrected comments added 02-Jan-2023
*/
trigger TriggerAllEventConcept on Account (before insert, before update, before delete, After insert, After update,  After delete ) {
  HandlerBeforeAfterConcept obj=new HandlerBeforeAfterConcept();
  if (trigger.isInsert) {
    if (trigger.isAfter ) {
      obj.beforeInsert(trigger.new);
    }
    if (trigger.isBefore) {
      obj.afterInsert(trigger.new);
    }
  }

  if (trigger.isUpdate) {
    if (trigger.isAfter ) {
      obj.beforeUpdate(trigger.old);
    }
    if (trigger.isBefore) {
      obj.afterUpdate(trigger.new);
    }
  }
  
  if (trigger.isDelete) {
    if (trigger.isAfter ) {
      obj.beforeDelete(trigger.old);
    }
    if (trigger.isBefore) {
      obj.afterDelete(trigger.old);
    }
  }
  
  if (trigger.isDelete && trigger.isAfter) {
    obj.beforeDelete(trigger.old);
  }
}