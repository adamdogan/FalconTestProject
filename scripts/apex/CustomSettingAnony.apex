Map<string, Country_Code__c> mapCC = Country_Code__c.getall();
System.debug('map of the country code ' + mapCC);

for (string  eachCountry  : mapCC.keySet()) {
    System.debug('country '+ eachCountry + 'code += ' + mapCC.get(eachCountry).Country_Code__c);
    
}