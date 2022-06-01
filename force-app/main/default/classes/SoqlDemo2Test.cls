/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public with sharing class SoqlDemo2Test {
    @TestSetup
    private static void setupData() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact c = new contact();
            c.LastName = 'Test SOQL';
            if (i < 100) {
                c.accountid = acc1.id;
            } else if (i < 200) {
                c.accountid = acc2.id;
            } else if(i < 300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
    }
    @isTest
    private static void soqlDemoTest1() {
        //in preparing data, we consumed FEW governor limits.
        //ex: 2 dmls. 303 DML rows
        //some heap size, some cpu time etc.
        Test.startTest();
        soqldemo2.childToParent_Soql1();
        Test.stopTest();
    }
    @isTest
    private static void sampleSoql4TEST() {
        list<account> listAccounts = [select id, name, type from account];
        for (account acc : listAccounts) {
            acc.type = 'Customer - Direct';
        }
        update listAccounts;

        List<Opportunity> createOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity o = new Opportunity();
            o.Name = 'opp1';
            o.StageName = 'Closed Won';
            o.CloseDate = date.today();
            if(i < 100){
                o.AccountId = listAccounts[0].id;
            }
            else if(i< 200){
                o.AccountId =  listAccounts[1].id;
            }
            else if(i< 300){
                o.AccountId =  listAccounts[2].id;
            }
            createOpps.add(o);
        }
        insert createOpps;

        Test.startTest();
        SoqlDemo2.sampleSoql4();
        Test.stopTest();
    }
}





// bu bizim yaptigimiz daha once yuakaridakide @testSetup daki 


/*
@isTest
public class SoqlDemo2Test {
    @isTest
    private static void soqlDemoTest1() {
        // first step is prepearing data 
        Account acc1 = new account();
        acc1.Name = 'SI Test ';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test ';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI  Test ';
        acc3.Industry = 'Banking';

        List<account>  ListAcc = new List<account> {acc1, acc2,acc3};
        Insert ListAcc;

        List<contact > listCnt = new List<contact >();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact ();
            c.LastName = 'Test SOQL';
            if (i<100) {
                c.accountid = acc1.id;     
            } else if (i<200){
                c.accountid = acc2.id;

            } else if (i<300){
                c.accountid = acc3.id;
            }  
            listCnt.add(c);
        }
        insert listCnt; 
        // inprepering data we comsumed few govenor limits 
        Test.startTest(); // governer limit
        SoqlDemo2.childToParent_Soql1();
        Test.stopTest(); // governer limiti

    }
}

*/
    /*
    @isTest
    private static void soqlDemoTest2(){
        Account acc4 = new account();
        acc4.name = 'apex4 ';
        acc4.AnnualRevenue = 100000;
        acc4.type = 'Customer - Direct';

        Account acc5 = new account();
        acc5.name = 'apex5 ';
        acc5.AnnualRevenue = 120000;
        acc5.type = 'other';

        Account acc6 = new account();
        acc6.name = 'apex6';
        acc6.AnnualRevenue = 134000;
        acc6.type = 'Customer - Direct';


        List<account> listAcc1 = new List<account>(acc4,acc5,acc6);
        insert listAcc1;

        List<Opportunity> listOfOpp = new List<Opportuity>();
        opportunities opp1 = new opportunities();
        opp1.name = listAcc1.name;
        opp1.amount=listAcc1.amount.type()
*/
    
    
