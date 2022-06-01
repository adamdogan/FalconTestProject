/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CaseTrigger on Case (before insert, before update , after insert , after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        Map<id, case> newCsMap = trigger.newMap;
        Map<id, case> oldCsMap =trigger.oldMap;
        Set<id> setofCsId = newCsMap.keyset();

           for (id eachId : setofCsId) {
               if (newCsMap.get(eachId).origin !=oldCsmap.get(eachId).origin) {
                   System.debug('case origin field has been updated ' + newCsMap.get(eachId).origin);     
               }      
        }  
    }

}