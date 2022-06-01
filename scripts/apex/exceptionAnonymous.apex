try {
Account a = new Account();
insert a;  
} 
catch(DmlException dex){ // this is a small bucket if we catch it here we do not need to do it in other place 
System.debug('dml went wrong buddy');
}
catch (Exception ex) {
    System.debug('something went wrong buddy ');
}
system.debug('account inserted');