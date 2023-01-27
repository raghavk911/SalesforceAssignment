trigger TriggerAccount on Account (before insert) {
    TriggerHandlerAccount th=new TriggerHandlerAccount();
    th.accountContactTrigger(Trigger.new);
}