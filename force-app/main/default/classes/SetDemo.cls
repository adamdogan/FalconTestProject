public class SetDemo {
    public static void citySet(){    
        // we are creating empty string 
        // collections                              creating new
        //data type     variable Name          instance of list class
    Set<string>        cities        = new Set<string>();
    // . add() method similar to list 
    cities.add('tokyo');
    cities.add('lisbon');
    cities.add('berlin');
    cities.add('nairobi');
    cities.add('tokyo');
    cities.add('berlin');
    cities.add('nairobi');
    System.debug('set of the sities : ' + cities );
    }
    public static void randomIntegerSet (){
        Set <integer>  setInteger = new Set<integer> ();
        setInteger.add(10);
        setInteger.add(10);
        setInteger.add(30);
        setInteger.add(50);
        setInteger.add(10);
        setInteger.add(100);
        setInteger.add(1490);
        System.debug('set of the random integer ' + setInteger );
    }
    public static void rdStudents(){
        Set<string> stName = new Set<string>();
        stName.add('adam');
        stName.add('kaylan');
        stName.add('john');
        stName.add('melissa');
        stName.add('fatih');
        stName.add('aysha');
        stName.add('alper');
        System.debug('student lis is ' + stName);   
    }
    public static set<integer>  setFromList(list<integer> intList) {
        Set<integer> intSet = new Set<integer>();
        intSet.addAll(intList);
        return intSet;
        
    }
    // buda string e ornek 
public static set<string> setFromList2(list<string> listCandidates) {
    set<string> stSet = new set<string>();
    stSet.addAll(listCandidates);
    return stSet;   
}
public static set<string> capitalizeSet(set<string> setString) {
    
    Set<string> upperCaseSet = new Set<string>();
    for (string eachStr : setString) {
        string tempStr= eachStr.toUpperCase();
        upperCaseSet.add(tempStr);
    }
    return upperCaseSet;   
}
}
