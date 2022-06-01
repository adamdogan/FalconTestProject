/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                          Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
 
             for(contact eachContact: cntTriggerNew){
                 contact oldContact = cntTriggerOldMap.get(eachContact.id);
                 if(oldContact.LeadSource == 'Partner Referral'){
                     eachContact.addError('Cannot update contact where lead source is Partner Referral');
                 }
             }
    }

    // do n0t allow user to update lead source 
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap) {
        for (contact eachContact : cntTriggerNew) {
            contact oldContact= cntTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource != eachContact.LeadSource) {
                String customValidation = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customValidation);     
            }

            
        }
        
    }
 }