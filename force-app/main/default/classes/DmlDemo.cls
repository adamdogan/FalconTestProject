/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class DmlDemo{
    public static void dmlInsertDemo_stndObj() {
        // creating new instance of account sObject 
        Account acc = new Account ();
        //2. set field values 
        acc.name= 'apex of america';
        acc.Site='www.softinnovas.com';
        acc.Description='Salesforce Bootcamp';
        
        insert acc;
        System.debug(acc);
    }
    public static void dmlInsertDemo_cstmObj(){
        Salesforce_project__c sp = new Salesforce_project__c();
        sp.project_name__c = 'teach dml to falcons';
        sp.description__c = 'all of them great learner ';
        insert sp;
    }
public static void dmlUpdateDemo_1(){
    account acc = new account();
    acc.name='S';
    insert acc;
    system.debug('inserted ' + acc);
    acc.Name= 'Salesforce Inc.' ;
    update acc;
    system.debug('updated ' 
    + acc);
}
public static void dmlUpdateDemo_2(){
    //retvieve using SOQL then update recprd 
    account acc = [select id, name from account where name='Salesforce Inc.' limit 1];
    //2. create a contact instance 
    contact cnt = new contact();
    //2.1 set to contact fied as usual 
    cnt.LastName =  'Adam';
    //3. set accountid field(relationshipfield )
    cnt.accountId = acc.Id;
    //4. DML
    insert cnt;

}
}
