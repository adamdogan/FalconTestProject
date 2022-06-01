/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-06-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
// trigger AccountTrigger2 on Account (after insert) {
// System.debug('after inserting trigger called ');
// }
// we can do before and after triggger at the same time 

trigger AccountTrigger2 on Account (before insert,after insert{
    System.debug('after inserting trigger called ');
    System.debug('before insert account trigger fired ');
        if (Trigger.isBefore){
        // true when cpde os running 0n before context 
        System.debug('Before insert trigger.');
        }
        // true when the code os running is after context
        if (Trigger.isAfter){
        System.debug('After insert trigger ');
}
}