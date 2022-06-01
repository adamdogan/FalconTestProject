/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-05-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<account> listAcc =[select id, name,   description from account order by CreatedDate limit 150];
        List<account> updatesAccounts = new List<account>();

    
        for ( Account acc : listAcc) {
            acc.Name += 'vB';
            acc.description =  'Update via bulk DMl';
            updatesAccounts.add(acc);  
        }
        if (!updatesAccounts.isEmpty()) {
            update updatesAccounts;
        }

    }
}
