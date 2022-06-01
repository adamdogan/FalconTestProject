/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-10-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SoqlDemo2 {
    public static void childToParent_Soql1() {
        //querying on child return list<child_sObject>
        List<Contact> listCnt = [select id, name , Account.name from Contact where Account.Industry = 'Energy'];
        for (Contact eachContact : listCnt) {
            string accName =eachContact.Account.Name;
            System.debug('contact name  is ' + eachContact.name + ', its acc is  ' + accName);
        }
    }

    // print the annual revenue and name of all the accounts of type 'customer-Diect '
    //and also print the Opportunity name and amount for the respective 'Closed Won' Oppportunity

    public static void sampleSoql4() {
        List<Account> accountWithOppList=[select name, annualrevenue,(select name, CloseDate, amount from Opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
            // list of account 
        for (account eachAcc : accountWithOppList) {
        System.debug('account name is ' + eachAcc.name + ', it is annual revenue is '+ eachAcc.AnnualRevenue);
            // list of opportunities 
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;      
             for (Opportunity  opp : eachAccOpps) {
                System.debug('Opp name is' + opp.Name + ',opp amount ' + opp.Amount); 
             } 
            System.debug('---------------');  
        }  
    }  
    
    public static void soqlDemo5(){
        List<Salesforce_Project__c> listSP = [select id, name ,Project_Name__c, (select name,Subject__c,Priority__c from Salesforce_Tickets__r) from Salesforce_Project__c];
        // project id : sp-1001 - total st 2 and high priority st ;1
        integer totalHighPriorityST= 0;
        for (Salesforce_Project__c eachSP :listSP) {
            List<Salesforce_ticket__c> listST = eachSP.Salesforce_Tickets__r;
            string spName= eachSp.name;
            integer totalSt=listST.size();
            integer highPrioritySt= 0;
            for (Salesforce_Ticket__c eachST : listST) {
                if (eachST.Priority__c == 'high') {
                    highPrioritySt++;
                    totalHighPrioritySt++;  
                }  
            }
            System.debug('project id ' + spName + ', total st ' + totalSt+ 'high priority st ' + highPrioritySt );  
        }
        System.debug('total high priority tickets in the org ' + totalHighPriorityST);
    }
}
