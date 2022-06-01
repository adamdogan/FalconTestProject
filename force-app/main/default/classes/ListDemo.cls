public with sharing class ListDemo {
    public static string candidatesList(integer indx) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('marc');// index 0
        listCandidates.add('elon');// index 1
        listCandidates.add('bill');// 2
        listCandidates.add('marc');// 3
        // bunu simdi method update etmek icin yapiyoruz 
        system.debug('candidate are ' + listCandidates);
        string retrnString = '';
        if(indx>=0 && indx<listCandidates.size()){
            retrnString=listCandidates[indx];

        } else {
            retrnString = 'NO uch value found';
        }
        return retrnString;

        // string valueat3= listCandidates[3];
        // System.debug('value at index of 3 is ' + valueat3);
        // System.debug('candidates are '+ listCandidates);
    }
    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);// index o
        listInteger.add(15);// index 1
        listInteger.add(20);//2
        listInteger.add(40);//3
        listInteger.add(100);//4
        listInteger.add(15);   //4
        // herhangi bir index deki value merak ediyorsak buradan onu alabiliriz 
        integer index3Value = listInteger.get(3);
        //or 
        integer index3Value2 = listInteger[3];
        System.debug('index 3 value ' +  index3Value);
        System.debug(' list of random integer '+ listInteger);

    }
    public static void iterateIntegerList(){
        list<integer>  listInteger1 = new list <integer>();
        listInteger1.add(110);
        listInteger1.add(130);// index o
        listInteger1.add(150);// index 1
        listInteger1.add(200);//2
        listInteger1.add(400);//3
        listInteger1.add(170);//4
        listInteger1.add(190);   
    for (integer eachIntegr : listInteger1){
        system.debug(eachIntegr);
    }
    }
}
