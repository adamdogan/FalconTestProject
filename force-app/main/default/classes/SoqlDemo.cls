/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class SoqlDemo {
    public static void accountSoql_1() {
        // sopq; query always return the list <sObject.
        // assagidaki code noze list of account 
        // make sure that you are not using the curly bracket it is just a regular bracket 
    List<Account>  listAcc = [ select ID , Name from Account where Name like '%A%'];
    System.debug(listAcc);
    System.debug('# of the account ' + listAcc.size());


    account acc =[select id , name , website  from account order by createdDate desc LIMIT 1];
    System.debug('latest account crerated is ' + acc);
}
public static void accountSoql_2(){
    account acc =[select id , name , phone, AccountNumber   from account order by createdDate desc LIMIT 1];
    System.debug('latest account crerated is ' + acc);
    string accName = acc.name;
    string accPhone = acc.phone;
    System.debug('acc name is ' + accName);
    System.debug('acc phone number is ' + accPhone);
    System.debug('acc account nmber is ' + acc.AccountNumber);
    System.debug('acc id number is  '+ acc.id);
    // onemli bir note istersen variable oluturup system debug yapip cagirirsin veya direk vriable . name veya phone yazip system icince cagirabilirsin 


} 
public static void accountSoql_3(){
    // soql only return sobject if it returning only one record 
    List<account> listAcc =[Select id , name, phone, accountNumber from Account order by createdDate desc];
    System.debug('all account ' + listAcc);
    //data type  has to be same as list 
    for (Account eachAccount : listAcc) {
        id accid = eachAccount.id;
        string accName = eachAccount.Name;
        string accPhone = eachAccount.phone;
        System.debug('accName = ' + accName + ', phone is ' + accPhone);
        System.debug('accounr number is ' + eachAccount.AccountNumber);
        System.debug('------------------');
        // buardaa iki turlu varibale yazdik for loop ocinde birinfe string ile accName deyip sonrada debug icine eachAccount.AccountNumber kullandik 
    }
    
}
public static void accountSOQL_Filter() {
    string accNameFilter = 'Salesforce Inc ';
    List<account> listAcc = [Select id, name from account where name = :accNameFilter]; 
    System.debug(listAcc);
    
}
public static void accountSOQL_Filter(string accNameFilter) {
    List<account> listAcc = [select id, name  from account where name = :accNameFilter];
    System.debug(listAcc);
}
public static void childToParent_Soql1() {
    //querying on child return list<child_sObject>
    List<Contact> listCnt = [select id, name , Account.name from Contact where Account.Industry = 'Energy'];
    for (Contact eachContact : listCnt) {
        string accName =eachContact.Account.Name;
        System.debug('contact name  is ' + eachContact.name + ', its acc is  ' + accName);
    }
}
}