/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-17-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger accountTrigger1 on account  (before insert, after insert, before update , after update) {
    /*if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler1.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        AccountTriggerHandler1.updateVIPForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap );
    }
    */
    if (trigger.isBefore && trigger.isUpdate) {
        Map<id, account>  = new Map<id, account>();
        
    }  
 }
