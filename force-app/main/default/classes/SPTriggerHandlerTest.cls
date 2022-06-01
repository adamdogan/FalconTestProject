@isTest
public with sharing class SPTriggerHandlerTest {
    @isTest
    private static void tesMethod1(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = ' teacg async to falcons ';
        sp.Description__c = ' all 40% are great learners . still';

        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = ' teach future to falcons ';
        sp1.Description__c =' all 40% still are great learner ';

        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp, sp1};
        insert lstSP;

        Set<id> spIds = new Set<id>{sp.id , sp1.id};
        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();
        
        // assert 
        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
    }
}
