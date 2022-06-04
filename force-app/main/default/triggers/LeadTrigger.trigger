/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger LeadTrigger on Lead (Before Insert, Before Update, After Insert, After Update ) {
    if (trigger.isBefore && trigger.isInsert) {
   List<Lead> newleadlist = trigger.new;
   for (lead eachLead : newleadlist) {
       System.debug( eachLead.lastName + 'is created successfully');  
   }// trigger
}
}