/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger SalesforceProjectTrigger on Salesforce_project__c (before insert, after insert) {
if (trigger.isAfter && trigger.isInsert) {
    System.debug('trigger caled ');
    SalesforceProjectTriggerHandler.updateProjectDescription(trigger.NewMap.keySet());
    System.debug('Future methof called already. and seocnd method calling ');
    SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.New);
}
if (trigger.isAfter && trigger.isUpdate) {
    SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
}
