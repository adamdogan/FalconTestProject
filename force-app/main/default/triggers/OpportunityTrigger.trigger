/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger OpportunityTrigger on opportunity (before insert, before update, after insert, after update) {
if(trigger.isBefore && trigger.isInsert)
OpportunityTriggerHandler.printOfOpportunity(Trigger.New);

if (trigger.isAfter && trigger.isUpdate) {
    OpportunityTriggerHandler.updatedOpp(Trigger.update);
    
}
if (trigger.isAfter && trigger.isUpdate) {
    Map<Id, Opportunity> mapOppNew = trigger.newMap;
    Map<Id, Opportunity> mapOppOld = trigger.oldMap;
    OpportunityTriggers.printDescName(mapOppNew, mapOppOld);
}
}