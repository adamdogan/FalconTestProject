string jsonAccountString ='{ "Name" : "JsonToApex", "Type" : "Prospect", "AnnualRevenue":50}';
Object ob = JSON.deserialize(jsonAccountString, Account.class);// buarda object olustuuryoryz 
Account acc = (Account)ob;// burda olusturdugumuz objecti accounta cevirioruz

insert acc;

string jsonAccountString2 = '[{"Name": "JasonToApex4", "Type" : "Prospect", "AnnualRevenue": 50}, { "Name" : "Json To Apex HERO", "Type":"Prospect", "AnnualRevenue": 50999424}]';
object ob1 = JSON.deserialize(jsonAccountString2, List<Account>.class);
List<Account> listAcc=(list<Account>)ob1;

