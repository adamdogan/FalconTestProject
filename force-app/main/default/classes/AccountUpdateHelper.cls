/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-17-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  with sharing class AccountUpdateHelper {
    @InvocableMethod   

    public static void updateAccountWebsite(list<id> accIds) {
        List<account> accountsToUpdate = new List<account>();
        // we used the soql 
        List<account> accounts = [select id, name, Website from account where id in :accIds];
        // yukarida where id in kulandik in kullanmammizin sebebi list 
        for (account eachAcc : accounts) {
            eachAcc.Website = 'www.softinnnovas.com';
            accountsToUpdate.add(eachAcc);  
        }
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;   
        }
    }
}