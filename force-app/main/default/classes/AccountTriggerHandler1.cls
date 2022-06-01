/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AccountTriggerHandler1 {
public static void updateAccountDescription(list<account> accTriggerNew,
                                            list<account> accTriggerOld, 
                                            map<id,account> accTriggerNewMap,
                                            map<id,account> accTriggerOldMap) {

    }
    public static void updateVIPForAllContact(list<account> accTriggerNew,
                                            list<account> accTriggerOld,
                                            map<id, account> accTriggerNewMap,
                                            map<id, account> accTriggerOldMap) {
        System.debug('update all contact/s vip field');
        // get set of account ids where only vip fields is updated
        Set<Id> setAccIDs = new set<id>();
    for (account  eachAcc : accTriggerNew) {
        // check if VIP field is updated or not 
        // hpw we do it we check if old value and new value is same or
        if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c) {
            setAccIDs.add(eachAcc.Id);  
        }   
    }
    //get list of contacts for accounts where VIP is updated 
    List<contact> listContacts = [select id,name, account.Id,vip__c from contact where account.Id in :setAccIDs];

    for (contact eachContact  : listContacts) {
        account newAccount = accTriggerNewMap.get(eachContact.account.Id); 
        boolean newAccVip = newAccount.vip__c;  
        eachContact.vip__c = newAccVip; 
    }
    if (!listContacts.isEmpty()) {
        update listContacts;  
    }
    // get set of the account ids where only vip field is updates    
}

}