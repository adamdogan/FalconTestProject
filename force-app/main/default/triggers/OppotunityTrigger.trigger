/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
    trigger OppotunityTrigger on Oppotunity (before insert, before update, after insert, after update) {
    if (trigger.isBefore && trigger.isUpdate) {
    List<opportunity> oppListNew = trigger.new;
    List<opportunity> oppListOld = trigger.old;
    for (opportunity eachOppNew : oppListNew) {
        System.debug('the name of after updated account name ' + eachOppNew.Name + ' and the amount is ' + eachOppNew.Amount);
    }
    for (opportunity oppEachOlld : oppListOld) {
        System.debug('the name if the before the update is ' + oppEachOlld.Name + ' and the amount is ' + oppEachOlld.Amount);
    }
    }
}