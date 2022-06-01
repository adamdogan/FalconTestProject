SetDemo.citySet();
SetDemo.randomIntegerSet();
SetDemo.rdStudents();
//List<integer> l1 = new List<integer>{10,15,20,100,30, 99,20}; alttaki sekilde de yazabiliriz
// direk yukaridaki sekildede yazabiliriz 
List<integer> l1 = new List<integer>();
l1.add(10);
l1.add(15);
l1.add(20);
l1.add(100);
l1.add(30);
l1.add(99);
l1.add(20);
Set<integer> set3 = SetDemo.setFromList(l1);
System.debug('set fro  the list ' + set3 );

List<string> lCandidate = new List<string>{'suleymen','canan','alper'};
Set<string> setCandidate =SetDemo.setFromList2(lCandidate);
System.debug(setCandidate);

Set<string> cities1 = new Set<string>();
cities1.add('Tokyo');
cities1.add('Lisbon');
cities1.add('Berlin');
cities1.add('Nairobi');
cities1.add('Tokyo');
cities1.add('Berlin');
System.debug('set of the cities ' + cities1);
Set<string> capsCities = SetDemo.capitalizeSet(cities1);
System.debug(capsCities);
