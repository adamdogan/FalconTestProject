/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
/*
trigger ContactTrigger on contact (before insert) {
    if (trigger.isBefore) {
        System.debug('we are in the before trigger.');      
    if (trigger.isInsert) {
        System.debug('Before insert trigger called .');
    }
    if (trigger.isUpdate) {
        System.debug('before uodate triger called.');  
    }
    
}
if (trigger.isAfter) {
    System.debug('we are in the after trigger. SBNC.');
    if (trigger.isInsert) {
        System.debug('after insert trigger called.');  
    }
    if (trigger.isUpdate) {
        System.debug('After update trigger called ');
    }   
}
}
*/
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}