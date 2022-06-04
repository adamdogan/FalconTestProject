account a = new account ();
a.Name = 'mona';
a.phone = null;
a.AnnualRevenue = 90909854;

Account b = new Account();
b.name = 'lisa';
b.Phone= '989222222';
b.Site='';
List<Account> ab = new List<Account> {a,b};
String accountJSON1= JSON.serialize(ab);
System.debug(accountJSON1);