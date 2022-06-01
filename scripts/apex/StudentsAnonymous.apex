Students st=new Students();
st.firstName= ' David  ';
st.lastname='kali';
st.classYear='9';
st.major= ' Electrical';
string mj= st.generateReport();
system.debug(mj);
Students st1= new Students();
st1.firstName= ' John   ';
st1.lastname='david';
st1.classYear='11';
st1.major= 'Agricultural';
string mj1= st1.generateReport();
system.debug(mj1);

// this is soimething different for the trigger we need to have list thats why 

list<account> listAcc = new list<account>();
for (Integer i = 0; i < 4; i++){
    account acc2 = new account();
    acc2.Name = 'SoftInnovas 10-May v'+i;
    acc2.AccountNumber = 'asci-1'+i;
    acc2.Active__c = 'Yes';
    listAcc.add(acc2);
}
system.debug('size of list ' + listAcc.size());

if(!listAcc.isEmpty()){
    insert listAcc;
}