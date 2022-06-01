/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        // call the method directly because it is static 
        DmlDemo.dmlInsertDemo_stndObj();
        // how we can test if it insert it or not 
        // we have to write an soql
        // assagidaki dml sadece bize bir tane account verecek sadece yukaridaki method icindeki 
        List<account> listAcc = [select id, name from account];
        System.assertEquals(1, listAcc.size()); // buradaki sadece bir accunt oldugu icin aldik
        System.assertEquals('apex of america', listAcc[0].Name);// liste oldgu icin index aliyoruz
    }
    @isTest
    private static void dmlDemoTest2() {
       account acc  = new account();
       acc.Name ='Salesforce Inc.';
       insert acc;

        DmlDemo.dmlUpdateDemo_2();
        List<contact> listCnt = [select id, lastName,name from contact] ;
        System.assertEquals(1, listCnt.size());
        System.assertEquals('Adam', listCnt[0].LastName);
    }
}
