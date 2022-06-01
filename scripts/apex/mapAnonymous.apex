//map colection 
// key datatype
    // value      datatype       variable name        new instanace of same type of map

Map<string, string> mapCntCurrency = new Map<string, string>();
mapCntCurrency.put('Usa', 'Dollar');
mapCntCurrency.put('Japan','Yen');
mapCntCurrency.put('France', 'Europe');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('EL Salvatore', 'Bitcoin');
System.debug('map of the country currency = '+ mapCntCurrency);
// we can use that get the have value like we used in the list 
string IndiaCurrency = mapCntCurrency.get('India');
string turkeyCurrency= mapCntCurrency.get('Turkey');
System.debug('india currency is ' + IndiaCurrency);
System.debug('turkey currency is ' + turkeyCurrency);


//we are going to have the key to set (onemli) keys are uniqe and set are uniq
// bu ornekte data type is going to string 
// bunun icin .keySet() method 
//value will be returning list values can have dublicate value thats why it coulb be return to list 
set<string> countrySet = mapCntCurrency.keySet(); // .keySet() always return us set 
System.debug('countries in map '+ countrySet);

list<string> currencyList = mapCntCurrency.values();// .values() always return us value 
System.debug('the currency lis is' + currencyList);


// just a sample to understand 
map<integer, list<string>> mapOfcoun = new map<integer, list<string>>();
mapOfcoun.values();
// result is going to be list<list<string>list again


// key set is countries in map {EL Salvatore, France, India, Japan, Turkey, Usa}
Set<string> countrySet1 = mapCntCurrency.keySet(); // .keySet() always return us set 
System.debug('countries in map '+ countrySet1);
for(string eachKey : countrySet1){ // each key is for each loop
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ' currency is ' + eachCurrency;
    system.debug(printString);
}



