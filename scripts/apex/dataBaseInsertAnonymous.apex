account acc1 = new account ();
acc1.name = 'SI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'No';

Account acc2 = new account ();
acc2.Name = 'UI Test';
acc2.Industry= 'Energy';
acc2.Active__c= 'Yes';

account acc12x = new account();
account acc12y = new account();
account acc12z = new account();

List<account > listAcc = new List<account >{acc1, acc2, acc12x,acc12y,acc12z};

List<Database.SaveResult> results  = Database.insert(listAcc, false);
// Iterate SaveResult array
for (database.SaveResult eachResult: results) {
    if (eachResult.isSuccess()) {
        System.debug('Account successfully inserted account Id is' + eachResult.getId());   
    }
    else {
        System.debug('errors ' + eachResult.getErrors());
    }
    
}